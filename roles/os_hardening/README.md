# devsec.os_hardening

[![devsec.os_hardening](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/os_hardening.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/os_hardening.yml)
[![devsec.os_hardening VM](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/os_hardening_vm.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/os_hardening_vm.yml)

## Description

This role provides numerous security-related configurations, providing all-round base protection. It is intended to be compliant with the [DevSec Linux Baseline](https://github.com/dev-sec/linux-baseline).

It configures:

- Removes unused yum repositories and enables GPG key-checking
- Removes packages with known issues
- Configures pam for strong password checks
- Installs and configures auditd
- Disables core dumps via soft limits
- sets a restrictive umask
- Configures execute permissions of files in system paths
- Hardens access to shadow and passwd files
- Disables unused filesystems
- Disables rhosts
- Configures secure ttys
- Configures kernel parameters via sysctl
- Enables selinux on EL-based systems
- Removes SUIDs and GUIDs
- Configures login and passwords of system accounts

It will not:

- Update system packages
- Install security patches

We remove the following packages:

- xinetd ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.1)
- inetd ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.1)
- tftp-server ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.5)
- ypserv ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.4)
- telnet-server ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.2)
- rsh-server ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.3)
- prelink ([open-scap](https://static.open-scap.org/ssg-guides/ssg-sl7-guide-ospp-rhel7-server.html#xccdf_org.ssgproject.content_rule_disable_prelink))

We disable the following filesystems, because they're most likely not used:

- "cramfs"
- "freevxfs"
- "jffs2"
- "hfs"
- "hfsplus"
- "squashfs"
- "udf"
- "vfat" # only if uefi is not in use

To prevent some of the filesystems from being disabled, add them to the `os_filesystem_whitelist` variable.

## Known Limitations

### Docker support

If you're using Docker / Kubernetes+Docker you'll need to override the ipv4 ip forward sysctl setting.

```yaml
- hosts: localhost
  roles:
    - devsec.hardening.os_hardening
  vars:
    sysctl_overwrite:
      # Enable IPv4 traffic forwarding.
      net.ipv4.ip_forward: 1
```

### hidepid on RHEL/CentOS 7

When having `polkit-0.112-18.el7` (and later) installed and `/proc` mounted with `hidepid=2`, every time someone uses `systemctl` the following error is displayed, but systemctl runs successfully.

```
Error registering authentication agent: GDBus.Error:org.freedesktop.PolicyKit1.Error.Failed: Cannot determine user of subject (polkit-error-quark, 0)
```

We decided to set `hidepid=0` to remove the error message, if you want to use the other proposed workaround, you have to setup the user yourself and set our option to `hidepid_option: 2` via Ansible vars.

For further details see [RedHat: "GDBus.Error:org.freedesktop.PolicyKit1.Error.Failed: Cannot determine user of subject" seen when executing systemctl command](https://access.redhat.com/solutions/5005111) or [#364: hidepid=2 gives error when running systemctl on EL7](https://github.com/dev-sec/ansible-collection-hardening/issues/364)

### sysctl - vm.mmap_rnd_bits

We are setting this sysctl to a default of `32`, some systems only support smaller values and this will generate an error. Unfortunately we cannot determine the correct applicable maximum. If you encounter this error you have to override this sysctl in your playbook.

```yaml
- hosts: localhost
  roles:
    - devsec.hardening.os_hardening
  vars:
    sysctl_overwrite:
      vm.mmap_rnd_bits: 16
```

## Testing with inspec

If you're using inspec to test your machines after applying this role, please make sure to add the connecting user to the `os_ignore_users`-variable.
Otherwise inspec will fail. For more information, see [issue #124](https://github.com/dev-sec/ansible-os-hardening/issues/124).

We know that this is the case on Raspberry Pi.

## Changing sysctl variables

If you want to override sysctl-variables, you can use the `sysctl_overwrite` variable (in older versions you had to override the whole `sysctl_dict`).
So for example if you want to change the IPv4 traffic forwarding variable to `1`, do it like this:

```yaml
- hosts: localhost
  roles:
    - devsec.hardening.os_hardening
  vars:
    sysctl_overwrite:
      # Enable IPv4 traffic forwarding.
      net.ipv4.ip_forward: 1
```

Alternatively you can change Ansible's [hash-behaviour](https://docs.ansible.com/ansible/latest/reference_appendices/config.html#default-hash-behaviour) to `merge`, then you only have to overwrite the single hash you need to. But please be aware that changing the hash-behaviour changes it for all your playbooks and is not recommended by Ansible.

## Improving Kernel Audit logging

By default, any process that starts before the `auditd` daemon will have an AUID of `4294967295`. To improve this and provide more accurate logging, it's recommended to add the kernel boot parameter `audit=1` to you configuration. Without doing this, you will find that your `auditd` logs fail to properly audit all processes.

For more information, please see this [upstream documentation](https://www.kernel.org/doc/html/latest/admin-guide/kernel-parameters.html) and your system's boot loader documentation for how to configure additional kernel parameters.

## PAM configuration

We use specific PAM configuration for every linux distribution. This is a very diverse area, since every vendor seems to push their own system for managing PAM. We used following guides and sources for our configuration.

- on Debian/Ubuntu we use [pam-config-framework](https://wiki.ubuntu.com/PAMConfigFrameworkSpec)
- RHEL8 and compatible use information from [authselect](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_authentication_and_authorization_in_rhel/configuring-user-authentication-using-authselect_configuring-authentication-and-authorization-in-rhel), but our setup disables the configuration from authselect
- RHEL 6/7 and compatible use [authconfig](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system-level_authentication_guide/authconfig-install), but our setup disables the configuration from authconfig
- for RHEL 6/7 we also use information from [Desktop Security](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/security_guide/chap-hardening_your_system_with_tools_and_services#sec-Desktop_Security)

## Acknowledgements

This role is mostly based on guides by:

- [Arch Linux wiki, Sysctl hardening](https://wiki.archlinux.org/index.php/Sysctl)
- [NSA: Guide to the Secure Configuration of Red Hat Enterprise Linux 5](http://www.nsa.gov/ia/_files/os/redhat/rhel5-guide-i731.pdf)
- [Ubuntu Security/Features](https://wiki.ubuntu.com/Security/Features)
- [Deutsche Telekom, Group IT Security, Security Requirements (German)](https://www.telekom.com/psa)

<!-- BEGIN_ANSIBLE_DOCS -->

## Supported Operating Systems

- EL
  - 7, 8, 9
- Ubuntu
  - bionic, focal, jammy
- Debian
  - buster, bullseye
- Amazon
- Fedora
- ArchLinux
- SmartOS
- opensuse

## Role Variables

- `os_apt_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring apt.
  - Type: bool
  - Required: no
- `os_auditd_action_mail_acct`
  - Default: `root`
  - Description: If `space_left_action` or `admin_space_left_action` are set to `email`, uses the address or alias to send the email using `/usr/lib/sendmail`. of events created on one system but reported/analyzed on another system.
  - Type: str
  - Required: no
- `os_auditd_admin_space_left`
  - Default: `50`
  - Description: This is a numeric value in megabytes that tells the audit daemon when to perform a configurable action because the system is running low on disk space.
  - Type: int
  - Required: no
- `os_auditd_admin_space_left_action`
  - Default: `SUSPEND`
  - Description: This parameter tells the system what action to take when the system has detected that it is low on disk space. Valid values are ignore, syslog, rotate, email, exec, suspend, single, and halt.
  - Type: str
  - Required: no
- `os_auditd_disk_error_action`
  - Default: `SUSPEND`
  - Description: This parameter tells the system what action to take whenever there is an error detected when writing audit events to disk or rotating logs. Valid values are ignore, syslog, exec, suspend, single, and halt.
  - Type: str
  - Required: no
- `os_auditd_disk_full_action`
  - Default: `SUSPEND`
  - Description: This parameter tells the system what action to take when the system has detected that the partition to which log files are written has become full. Valid values are ignore, syslog, rotate, exec, suspend, single, and halt.
  - Type: str
  - Required: no
- `os_auditd_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring auditd.
  - Type: bool
  - Required: no
- `os_auditd_flush`
  - Default: `INCREMENTAL`
  - Description: Valid values are none, incremental, incremental_async, data, and sync.
  - Type: str
  - Required: no
- `os_auditd_log_format`
  - Default: `RAW`
  - Description: Describes how the information should be stored on disk. There are 2 options - raw and enriched.
  - Type: str
  - Required: no
- `os_auditd_log_group`
  - Default: `root`
  - Description: specifies the group that is applied to the log file's permissions. The group name can be either numeric or spelled out.
  - Type: str
  - Required: no
- `os_auditd_max_log_file`
  - Default: `6`
  - Description: This keyword specifies the maximum file size in megabytes. When this limit is reached, it will trigger a configurable action. The value given must be numeric.
  - Type: int
  - Required: no
- `os_auditd_max_log_file_action`
  - Default: `keep_logs`
  - Description: Defines the behaviour of auditd when its log file is filled up. Possible other values are described in the auditd.conf man page. The most common alternative to the default may be `rotate`.
  - Type: str
  - Required: no
- `os_auditd_num_logs`
  - Default: `5`
  - Description: This keyword specifies the number of log files to keep if `rotate` is given as the max_log_file_action. The value given must be numeric.
  - Type: int
  - Required: no
- `os_auditd_space_left`
  - Default: `75`
  - Description: If the free space in the filesystem containing log_file drops below this value, the audit daemon takes the action specified by space_left_action.
  - Type: int
  - Required: no
- `os_auditd_space_left_action`
  - Default: `SYSLOG`
  - Description: This parameter tells the system what action to take when the system has detected that it is starting to get low on disk space. Valid values are ignore, syslog, rotate, email, exec, suspend, single, and halt.
  - Type: str
  - Required: no
- `os_auth_allow_homeless`
  - Default: `false`
  - Description: true if to allow users without home to login.
  - Type: bool
  - Required: no
- `os_auth_gid_max`
  - Default: `60000`
  - Description: maximum number for automatic gid selection in groupadd.
  - Type: int
  - Required: no
- `os_auth_gid_min`
  - Default: `1000`
  - Description: minimum number for automatic gid selection in groupadd.
  - Type: int
  - Required: no
- `os_auth_lockout_time`
  - Default: `600`
  - Description: time in seconds that needs to pass, if the account was locked due to too many failed authentication attempts.
  - Type: int
  - Required: no
- `os_auth_pam_oddjob_mkhomedir`
  - Default: `false`
  - Description: Enables automatic homedir e.g. in FreeIPA environments
  - Type: bool
  - Required: no
- `os_auth_pam_passwdqc_enable`
  - Default: `true`
  - Description: true if you want to use strong password checking in PAM using passwdqc.
  - Type: bool
  - Required: no
- `os_auth_pam_passwdqc_options`
  - Default: `min=disabled,disabled,16,12,8`
  - Description: set to any option line (as a string) that you want to pass to passwdqc.
  - Type: str
  - Required: no
- `os_auth_pam_pwquality_options`
  - Default: `try_first_pass retry=3 authtok_type=`
  - Description: Options to pass to the PAM module pwquality
  - Type: str
  - Required: no
- `os_auth_pw_max_age`
  - Default: `60`
  - Description: maximum password age (set to `99999` to effectively disable it).
  - Type: int
  - Required: no
- `os_auth_pw_min_age`
  - Default: `7`
  - Description: minimum password age (before allowing any other password change).
  - Type: int
  - Required: no
- `os_auth_pw_remember`
  - Default: `5`
  - Description: how many used passwords are record.
  - Type: int
  - Required: no
- `os_auth_pw_warn_age`
  - Default: `7`
  - Description: number of days of warning before password expires.
  - Type: int
  - Required: no
- `os_auth_retries`
  - Default: `5`
  - Description: the maximum number of authentication attempts, before the account is locked for some time.
  - Type: int
  - Required: no
- `os_auth_root_ttys`
  - Default: `["console", "tty1", "tty2", "tty3", "tty4", "tty5", "tty6"]`
  - Description: A list of TTYs, from which root can log in, see `man securetty` for reference
  - Type: list
  - Required: no
- `os_auth_sub_gid_count`
  - Default: `65536`
  - Description: If /etc/subuid exists, the commands useradd and newusers (unless the user already have subordinate group IDs) allocate SUB_GID_COUNT unused group IDs from the range SUB_GID_MIN to SUB_GID_MAX for each new user. See also `os_auth_sub_gid_min` and `os_auth_sub_gid_max`.
  - Type: int
  - Required: no
- `os_auth_sub_gid_max`
  - Default: `600100000`
  - Description: maximum number for automatic subordinate gid selection in useradd and newusers.
  - Type: int
  - Required: no
- `os_auth_sub_gid_min`
  - Default: `100000`
  - Description: minimum number for automatic subordinate gid selection in useradd and newusers.
  - Type: int
  - Required: no
- `os_auth_sub_uid_count`
  - Default: `65536`
  - Description: If /etc/subuid exists, the commands useradd and newusers (unless the user already have subordinate user IDs) allocate SUB_UID_COUNT unused user IDs from the range SUB_UID_MIN to SUB_UID_MAX for each new user. See also `os_auth_sub_uid_min` and `os_auth_sub_uid_max`.
  - Type: int
  - Required: no
- `os_auth_sub_uid_max`
  - Default: `600100000`
  - Description: maximum number for automatic subordinate uid selection in useradd and newusers.
  - Type: int
  - Required: no
- `os_auth_sub_uid_min`
  - Default: `100000`
  - Description: minimum number for automatic subordinate uid selection in useradd and newusers.
  - Type: int
  - Required: no
- `os_auth_timeout`
  - Default: `60`
  - Description: authentication timeout in seconds, so login will exit if this time passes.
  - Type: int
  - Required: no
- `os_auth_uid_max`
  - Default: `60000`
  - Description: maximum number for automatic uid selection in useradd.
  - Type: int
  - Required: no
- `os_auth_uid_min`
  - Default: `1000`
  - Description: minimum number for automatic uid selection in useradd.
  - Type: int
  - Required: no
- `os_chfn_restrict`
  - Default: `''`
  - Description: Indicate which fields are changeable by chfn.
  - Type: str
  - Required: no
- `os_chmod_home_folders`
  - Default: `true`
  - Description: Set to `false` to disable "chmod 700" of home folders for regular users
  - Type: bool
  - Required: no
- `os_chmod_rootuser_home_folder`
  - Default: `true`
  - Description: Set to `false` to disable "chmod 700" of root's home folder
  - Type: bool
  - Required: no
- `os_cron_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring cron.
  - Type: bool
  - Required: no
- `os_ctrlaltdel_disabled`
  - Default: `false`
  - Description: Set to true to disable ctrl-alt-delete key combination.
  - Type: bool
  - Required: no
- `os_desktop_enable`
  - Default: `false`
  - Description: true if this is a desktop system, ie Xorg, KDE/GNOME/Unity/etc.
  - Type: bool
  - Required: no
- `os_env_extra_user_paths`
  - Default: `"[]"`
  - Description: Specify additional paths that should be checked for binaries where access will be minimized
  - Type: list
  - Required: no
- `os_env_user_paths`
  - Default: `["/usr/local/sbin", "/usr/local/bin", "/usr/sbin", "/usr/bin", "/sbin", "/bin"]`
  - Description: Specify paths that should be checked for binaries where access will be minimized
  - Type: list
  - Required: no
- `os_filesystem_whitelist`
  - Default: `"[]"`
  - Description: A list of filesystems that should not be disabled
  - Type: list
  - Required: no
- `os_hardening_enabled`
  - Default: `true`
  - Description: Whether to run the hardening
  - Type: bool
  - Required: no
- `os_ignore_home_folder_users`
  - Default: `"[]"`
  - Description: Specify user accounts, whose home folders shouldn't be chmodded to 700 when "os_chmod_home_folders" is enabled.
  - Type: list
  - Required: no
- `os_ignore_users`
  - Default: `["vagrant", "kitchen"]`
  - Description: Specify system accounts whose login should not be disabled and password not changed
  - Type: list
  - Required: no
- `os_limits_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring limits.
  - Type: bool
  - Required: no
- `os_login_defs_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring login_defs for newly created users.
  - Type: bool
  - Required: no
- `os_minimize_access_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring minimize_access.
  - Type: bool
  - Required: no
- `os_mnt_boot_dir_mode`
  - Default: `0700`
  - Description: Set default perimissions for /boot
  - Type: str
  - Required: no
- `os_mnt_boot_dump`
  - Default: `ext3 + ext4 = 1 / other = 0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_boot_enabled`
  - Default: `false`
  - Description: Set to true to configure /boot mountpoint
  - Type: bool
  - Required: no
- `os_mnt_boot_filesystem`
  - Default: `''`
  - Description: Configure file system for fstab entry /boot. If empty, the current file system type will be used.
  - Type: str
  - Required: no
- `os_mnt_boot_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /boot
  - Type: str
  - Required: no
- `os_mnt_boot_passno`
  - Default: `ext3 + ext4 = 2 / other = 0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_boot_src`
  - Default: `''`
  - Description: Set mount source for /boot
  - Type: str
  - Required: no
- `os_mnt_dev_dir_mode`
  - Default: `0755`
  - Description: Set default perimissions for /dev
  - Type: str
  - Required: no
- `os_mnt_dev_dump`
  - Default: `0`
  - Description: Configure dump for fstab entry /var/tmp.
  - Type: str
  - Required: no
- `os_mnt_dev_enabled`
  - Default: `true`
  - Description: Set to false to ignore /dev mountpoint
  - Type: bool
  - Required: no
- `os_mnt_dev_filesystem`
  - Default: `devtmpfs`
  - Description: Configure file system for fstab entry /dev
  - Type: str
  - Required: no
- `os_mnt_dev_options`
  - Default: `rw,nosuid,noexec`
  - Description: Configure mount options for /dev
  - Type: str
  - Required: no
- `os_mnt_dev_passno`
  - Default: `0`
  - Description: Configure passno for fstab entry /var/tmp.
  - Type: str
  - Required: no
- `os_mnt_dev_shm_dir_mode`
  - Default: `1777`
  - Description: Set default perimissions for /dev/shm
  - Type: str
  - Required: no
- `os_mnt_dev_shm_dump`
  - Default: `0`
  - Description: Configure dump for fstab entry /var/tmp.
  - Type: str
  - Required: no
- `os_mnt_dev_shm_enabled`
  - Default: `true`
  - Description: Set to false to ignore /dev/shm mountpoint
  - Type: bool
  - Required: no
- `os_mnt_dev_shm_filesystem`
  - Default: `tmpfs`
  - Description: Configure file system for fstab entry /dev/shm
  - Type: str
  - Required: no
- `os_mnt_dev_shm_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /dev/shm
  - Type: str
  - Required: no
- `os_mnt_dev_shm_passno`
  - Default: `0`
  - Description: Configure passno for fstab entry /var/tmp.
  - Type: str
  - Required: no
- `os_mnt_dev_shm_src`
  - Default: `tmpfs`
  - Description: Set mount source for /dev/shm
  - Type: str
  - Required: no
- `os_mnt_dev_src`
  - Default: `devtmpfs`
  - Description: Set mount source for /dev
  - Type: str
  - Required: no
- `os_mnt_home_dir_mode`
  - Default: `0755`
  - Description: Set default perimissions for /home
  - Type: str
  - Required: no
- `os_mnt_home_dump`
  - Default: `ext3/4 = 1, others = 0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_home_enabled`
  - Default: `false`
  - Description: Set to true to configure /home mountpoint
  - Type: bool
  - Required: no
- `os_mnt_home_filesystem`
  - Default: `''`
  - Description: Configure file system for fstab entry /home. If empty, the current file system type will be used.
  - Type: str
  - Required: no
- `os_mnt_home_options`
  - Default: `rw,nosuid,nodev`
  - Description: Configure mount options for /home
  - Type: str
  - Required: no
- `os_mnt_home_passno`
  - Default: `ext3/4 = 2, others = 0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_home_src`
  - Default: `''`
  - Description: Set mount source for /home. If empty, the current file system source device will be used.
  - Type: str
  - Required: no
- `os_mnt_run_dir_mode`
  - Default: `0755`
  - Description: Set default perimissions for /run
  - Type: str
  - Required: no
- `os_mnt_run_dump`
  - Default: `0`
  - Description: Configure dump for fstab entry /var/tmp.
  - Type: str
  - Required: no
- `os_mnt_run_enabled`
  - Default: `true`
  - Description: Set to false to ignore /run mountpoint
  - Type: bool
  - Required: no
- `os_mnt_run_filesystem`
  - Default: `tmpfs`
  - Description: Configure file system for fstab entry /run
  - Type: str
  - Required: no
- `os_mnt_run_options`
  - Default: `rw,nosuid,nodev`
  - Description: Configure mount options for /run
  - Type: str
  - Required: no
- `os_mnt_run_passno`
  - Default: `0`
  - Description: Configure passno for fstab entry /var/tmp.
  - Type: str
  - Required: no
- `os_mnt_run_src`
  - Default: `tmpfs`
  - Description: Set mount source for /run
  - Type: str
  - Required: no
- `os_mnt_tmp_dir_mode`
  - Default: `1777`
  - Description: Set default perimissions for /tmp
  - Type: str
  - Required: no
- `os_mnt_tmp_dump`
  - Default: `ext3/4 = 1, others = 0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_tmp_enabled`
  - Default: `false`
  - Description: Set to true to configure /tmp mountpoint
  - Type: bool
  - Required: no
- `os_mnt_tmp_filesystem`
  - Default: `''`
  - Description: Configure file system for fstab entry /tmp. If empty, the current file system type will be used.
  - Type: str
  - Required: no
- `os_mnt_tmp_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /tmp
  - Type: str
  - Required: no
- `os_mnt_tmp_passno`
  - Default: `ext3/4 = 2, others = 0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_tmp_src`
  - Default: `''`
  - Description: Set mount source for /tmp. If empty, the current file system source device will be used.
  - Type: str
  - Required: no
- `os_mnt_var_dir_mode`
  - Default: `0755`
  - Description: Set default perimissions for /var
  - Type: str
  - Required: no
- `os_mnt_var_dump`
  - Default: `ext3/4 = 1, others = 0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_var_enabled`
  - Default: `false`
  - Description: Set to true to configure /var mountpoint
  - Type: bool
  - Required: no
- `os_mnt_var_filesystem`
  - Default: `''`
  - Description: Configure file system for fstab entry /var. If empty, the current file system type will be used.
  - Type: str
  - Required: no
- `os_mnt_var_log_audit_dir_mode`
  - Default: `0640`
  - Description: Set default perimissions for /var/log/audit
  - Type: str
  - Required: no
- `os_mnt_var_log_audit_dump`
  - Default: `ext3/4 = 1, others = 0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_var_log_audit_enabled`
  - Default: `false`
  - Description: Set to true to configure /var/log/audit mountpoint
  - Type: bool
  - Required: no
- `os_mnt_var_log_audit_filesystem`
  - Default: `''`
  - Description: Configure file system for fstab entry /var/log/audit. If empty, the current file system type will be used.
  - Type: str
  - Required: no
- `os_mnt_var_log_audit_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /var/log/audit
  - Type: str
  - Required: no
- `os_mnt_var_log_audit_passno`
  - Default: `ext3/4 = 2, others = 0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_var_log_audit_src`
  - Default: `''`
  - Description: Set mount source for /var/log/audit. If empty, the current file system source device will be used.
  - Type: str
  - Required: no
- `os_mnt_var_log_dir_mode`
  - Default: `0755`
  - Description: Set default perimissions for /var/log
  - Type: str
  - Required: no
- `os_mnt_var_log_dump`
  - Default: `ext3/4 = 1, others = 0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_var_log_enabled`
  - Default: `false`
  - Description: Set to true to configure /var/log mountpoint
  - Type: bool
  - Required: no
- `os_mnt_var_log_filesystem`
  - Default: `''`
  - Description: Configure file system for fstab entry /var/log. If empty, the current file system type will be used.
  - Type: str
  - Required: no
- `os_mnt_var_log_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /var/log
  - Type: str
  - Required: no
- `os_mnt_var_log_passno`
  - Default: `ext3/4 = 2, others = 0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_var_log_src`
  - Default: `''`
  - Description: Set mount source for /var/log. If empty, the current file system source device will be used.
  - Type: str
  - Required: no
- `os_mnt_var_options`
  - Default: `rw,nosuid,nodev`
  - Description: Configure mount options for /var
  - Type: str
  - Required: no
- `os_mnt_var_passno`
  - Default: `ext3/4 = 2, others = 0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_var_src`
  - Default: `''`
  - Description: Set mount source for /var. If empty, the current file system source device will be used.
  - Type: str
  - Required: no
- `os_mnt_var_tmp_dir_mode`
  - Default: `1777`
  - Description: Set default perimissions for /var/tmp
  - Type: str
  - Required: no
- `os_mnt_var_tmp_dump`
  - Default: `ext3/4 = 1, others = 0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_var_tmp_enabled`
  - Default: `false`
  - Description: Set to true to configure /var/tmp mountpoint
  - Type: bool
  - Required: no
- `os_mnt_var_tmp_filesystem`
  - Default: `''`
  - Description: Configure file system for fstab entry /var/tmp. If empty, the current file system type will be used.
  - Type: str
  - Required: no
- `os_mnt_var_tmp_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /var/tmp
  - Type: str
  - Required: no
- `os_mnt_var_tmp_passno`
  - Default: `ext3/4 = 2, others = 0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
  - Type: str
  - Required: no
- `os_mnt_var_tmp_src`
  - Default: `''`
  - Description: Set mount source for /var/tmp. If empty, the current file system source device will be used.
  - Type: str
  - Required: no
- `os_modprobe_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring modprobe.
  - Type: bool
  - Required: no
- `os_netrc_enabled`
  - Default: `true`
  - Description: Configure filesystem for existence of .netrc file in homedir
  - Type: bool
  - Required: no
- `os_netrc_whitelist_user`
  - Default: `"[]"`
  - Description: Add list of user to allow creation of .netrc in users homedir
  - Type: list
  - Required: no
- `os_pam_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring pam.
  - Type: bool
  - Required: no
- `os_profile_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring profile.
  - Type: bool
  - Required: no
- `os_remove_additional_root_users`
  - Default: `false`
  - Description: When enabled and there are multiple users with UID=0, only "root" will be kept. Others will be deleted.
  - Type: bool
  - Required: no
- `os_rhosts_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring rhosts.
  - Type: bool
  - Required: no
- `os_rootuser_pw_ageing`
  - Default: `false`
  - Description: Set to true to enforce password age settings for root user(s)
  - Type: bool
  - Required: no
- `os_securetty_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring securetty.
  - Type: bool
  - Required: no
- `os_security_auto_logout`
  - Default: `0`
  - Description: Set timeout in seconds for logout users automatically after time. Setting this to `0` disables the timeout.
  - Type: int
  - Required: no
- `os_security_init_prompt`
  - Default: `true`
  - Description: The PROMPT option provides console users the ability to interactively boot the system and select which services to start on boot.
  - Type: bool
  - Required: no
- `os_security_init_single`
  - Default: `false`
  - Description: Single-user mode is intended as a system recovery method, providing a single user root access to the system by providing a boot option at startup. By default, no authentication is performed if single-user mode is selected. To require entry of the root password even if the system is started in single-user mode, set this to false
  - Type: bool
  - Required: no
- `os_security_kernel_enable_core_dump`
  - Default: `false`
  - Description: kernel is crashing or otherwise misbehaving and a kernel core dump is created.
  - Type: bool
  - Required: no
- `os_security_kernel_enable_module_loading`
  - Default: `true`
  - Description: true if you want to allowed to change kernel modules once the system is running (eg `modprobe`, `rmmod`). WARNING - Rebuilding initramfs is deprecated and will be removed in the next major release. For more information take a look at this issue <https://github.com/dev-sec/ansible-collection-hardening/pull/591>
  - Type: bool
  - Required: no
- `os_security_packages_clean`
  - Default: `true`
  - Description: removes packages with known issues. See section packages.
  - Type: bool
  - Required: no
- `os_security_packages_list`
  - Default: `["xinetd", "inetd", "ypserv", "telnet-server", "rsh-server", "prelink"]`
  - Description: List of deprecated or insecure packages to remove
  - Type: list
  - Required: no
- `os_security_suid_sgid_blacklist`
  - Default: `"[]"`
  - Description: a list of paths which should have their SUID/SGID bits removed.
  - Type: list
  - Required: no
- `os_security_suid_sgid_enforce`
  - Default: `true`
  - Description: true if you want to reduce SUID/SGID bits. There is already a list of items which are searched for configured, but you can also add your own.
  - Type: bool
  - Required: no
- `os_security_suid_sgid_remove_from_unknown`
  - Default: `false`
  - Description: true if you want to remove SUID/SGID bits from any file, that is not explicitly configured in a `blacklist`. This will make every Ansible-run search through the mounted filesystems looking for SUID/SGID bits that are not configured in the default and user blacklist. If it finds an SUID/SGID bit, it will be removed, unless this file is in your `whitelist`.
  - Type: bool
  - Required: no
- `os_security_suid_sgid_whitelist`
  - Default: `"[]"`
  - Description: a list of paths which should not have their SUID/SGID bits altered.
  - Type: list
  - Required: no
- `os_security_users_allow`
  - Default: `"[]"`
  - Description: list of things, that a user is allowed to do. May contain `change_user`.
  - Type: list
  - Required: no
- `os_selinux_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring selinux.
  - Type: bool
  - Required: no
- `os_selinux_policy`
  - Default: `targeted`
  - Description: Set the SELinux polixy.
  - Type: str
  - Required: no
- `os_selinux_state`
  - Default: `enforcing`
  - Description: Set the SELinux state, can be either disabled, permissive, or enforcing.
  - Type: str
  - Required: no
- `os_sha_crypt_max_rounds`
  - Default: `640000`
  - Description: Define the number of maximum SHA rounds. With a lot of rounds brute forcing the password is more difficult. But note also that it more CPU resources will be needed to authenticate users. The values must be inside the 1000-999999999 range.
  - Type: int
  - Required: no
- `os_sha_crypt_min_rounds`
  - Default: `640000`
  - Description: Define the number of minimum SHA rounds. With a lot of rounds brute forcing the password is more difficult. But note also that it more CPU resources will be needed to authenticate users. The values must be inside the 1000-999999999 range.
  - Type: int
  - Required: no
- `os_sysctl_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring sysctl.
  - Type: bool
  - Required: no
- `os_unused_filesystems`
  - Default: `["cramfs", "freevxfs", "jffs2", "hfs", "hfsplus", "squashfs", "udf", "vfat", "dccp", "rds", "sctp", "tipc"]`
  - Description: Disable this list of unused filesystems
  - Type: list
  - Required: no
- `os_user_accounts_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring user_accounts.
  - Type: bool
  - Required: no
- `os_user_pw_ageing`
  - Default: `true`
  - Description: Set to false to disable password age enforcement on existing users
  - Type: bool
  - Required: no
- `os_users_without_password_ageing`
  - Default: `"[]"`
  - Description: List of users, where password ageing should not be enforced even if "os_user_pw_ageing" is enabled
  - Type: list
  - Required: no
- `os_yum_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring yum.
  - Type: bool
  - Required: no
- `os_yum_repo_file_whitelist`
  - Default: `"[]"`
  - Description: List of yum repository files under /etc/yum.repos.d/ which should not be altered.
  - Type: list
  - Required: no
- `proc_mnt_options`
  - Default: `rw,nosuid,nodev,noexec,relatime`
  - Description: Mount proc with hardenized options. Note that the hidepid option is set separately in vars/.
  - Type: str
  - Required: no
- `sysctl_config`
  - Default: `{"fs.protected_hardlinks": 1, "fs.protected_symlinks": 1, "fs.protected_fifos": 1, "fs.protected_regular": 2, "fs.suid_dumpable": 0, "kernel.core_uses_pid": 1, "kernel.kptr_restrict": 2, "kernel.kexec_load_disabled": 1, "kernel.sysrq": 0, "kernel.randomize_va_space": 2, "kernel.yama.ptrace_scope": 1, "net.ipv4.ip_forward": 0, "net.ipv6.conf.all.forwarding": 0, "net.ipv4.conf.all.rp_filter": 1, "net.ipv4.conf.default.rp_filter": 1, "net.ipv4.icmp_echo_ignore_broadcasts": 1, "net.ipv4.icmp_ignore_bogus_error_responses": 1, "net.ipv4.icmp_ratelimit": 100, "net.ipv4.icmp_ratemask": 88089, "net.ipv4.tcp_timestamps": 0, "net.ipv4.conf.all.arp_ignore": 1, "net.ipv4.conf.all.arp_announce": 2, "net.ipv4.tcp_rfc1337": 1, "net.ipv4.tcp_syncookies": 1, "net.ipv4.conf.all.shared_media": 1, "net.ipv4.conf.default.shared_media": 1, "net.ipv4.conf.all.accept_source_route": 0, "net.ipv4.conf.default.accept_source_route": 0, "net.ipv6.conf.all.accept_source_route": 0, "net.ipv6.conf.default.accept_source_route": 0, "net.ipv4.conf.all.send_redirects": 0, "net.ipv4.conf.default.send_redirects": 0, "net.ipv4.conf.all.log_martians": 1, "net.ipv4.conf.default.log_martians": 1, "net.ipv4.conf.default.accept_redirects": 0, "net.ipv4.conf.all.accept_redirects": 0, "net.ipv4.conf.all.secure_redirects": 0, "net.ipv4.conf.default.secure_redirects": 0, "net.ipv6.conf.default.accept_redirects": 0, "net.ipv6.conf.all.accept_redirects": 0, "net.ipv6.conf.all.accept_ra": 0, "net.ipv6.conf.default.accept_ra": 0, "net.ipv6.conf.default.router_solicitations": 0, "net.ipv6.conf.all.router_solicitations": 0, "net.ipv6.conf.default.accept_ra_rtr_pref": 0, "net.ipv6.conf.default.accept_ra_pinfo": 0, "net.ipv6.conf.default.accept_ra_defrtr": 0, "net.ipv6.conf.default.autoconf": 0, "net.ipv6.conf.all.autoconf": 0, "net.ipv6.conf.default.dad_transmits": 0, "net.ipv6.conf.default.max_addresses": 1, "vm.mmap_min_addr": 65536, "vm.mmap_rnd_bits": 32, "vm.mmap_rnd_compat_bits": 16}`
  - Description: various sysctl-settings
  - Type: dict
  - Required: no
- `sysctl_overwrite`
  - Default: `"{}"`
  - Description: To overwrite options in the `sysctl_config`-dict, overwrite them here.
  - Type: dict
  - Required: no
- `ufw_default_application_policy`
  - Default: `SKIP`
  - Description: The default application policy is skip, which means that the update --add-new command will do nothing
  - Type: str
  - Required: no
- `ufw_default_forward_policy`
  - Default: `DROP`
  - Description: set default forward policy of ufw to `DROP`.
  - Type: str
  - Required: no
- `ufw_default_input_policy`
  - Default: `DROP`
  - Description: set default input policy of ufw to `DROP`.
  - Type: str
  - Required: no
- `ufw_default_output_policy`
  - Default: `ACCEPT`
  - Description: set default output policy of ufw to `ACCEPT`.
  - Type: str
  - Required: no
- `ufw_enable_ipv6`
  - Default: `true`
  - Description: Set to `true` to apply rules to support IPv6 (no means only IPv6 on loopback accepted).
  - Type: bool
  - Required: no
- `ufw_ipt_modules`
  - Default: `nf_conntrack_ftp nf_nat_ftp nf_conntrack_netbios_ns`
  - Description: Define which netfilter modules to load
  - Type: str
  - Required: no
- `ufw_ipt_sysctl`
  - Default: `''`
  - Description: by default it disables IPT_SYSCTL in /etc/default/ufw. If you want to overwrite /etc/sysctl.conf values using ufw - set it to your sysctl dictionary, for example `/etc/ufw/sysctl.conf`.
  - Type: str
  - Required: no
- `ufw_manage_builtins`
  - Default: `no`
  - Description: If this variable is set to 'yes', on stop and reload the built-in chains are flushed. If it is set to 'no', on stop and reload the ufw secondary chains are removed and the ufw primary chains are flushed
  - Type: str
  - Required: no
- `ufw_manage_defaults`
  - Default: `true`
  - Description: true means apply all settings with `ufw_` prefix.
  - Type: bool
  - Required: no

## Dependencies

None.

## Example Playbook

```
- hosts: all
  roles:
    - name: devsec.hardening.os_hardening
```

<!-- END_ANSIBLE_DOCS -->
