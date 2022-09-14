# devsec.os_hardening

![devsec.os_hardening](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.os_hardening/badge.svg)
![devsec.os_hardening VM](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.os_hardening%20VM/badge.svg)

## Looking for the old ansible-os-hardening role?

This role is now part of the hardening-collection. You can find the old role in the branch `legacy`.

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

## Requirements

- Ansible 2.9.0

## Known Limitations

### Docker support

If you're using Docker / Kubernetes+Docker you'll need to override the ipv4 ip forward sysctl setting.

```yaml
- hosts: localhost
  collections:
    - devsec.hardening
  roles:
    - devsec.hardening.os_hardening
  vars:
    sysctl_overwrite:
      # Enable IPv4 traffic forwarding.
      net.ipv4.ip_forward: 1
```

### hidepid on RHEL/CentOS 7

When having `polkit-0.112-18.el7` (and later) installed and `/proc` mounted with `hidepid=2`, everytime someone uses `systemctl` the following error is displayed, but systemctl runs successfully.

```
Error registering authentication agent: GDBus.Error:org.freedesktop.PolicyKit1.Error.Failed: Cannot determine user of subject (polkit-error-quark, 0)
```

We decided to set `hidepid=0` to remove the error message, if you want to use the other proposed workaround, you have to setup the user yourself and set our option to `hidepid_option: 2` via Ansible vars.

For further details see [RedHat: "GDBus.Error:org.freedesktop.PolicyKit1.Error.Failed: Cannot determine user of subject" seen when executing systemctl command](https://access.redhat.com/solutions/5005111) or [#364: hidepid=2 gives error when running systemctl on EL7](https://github.com/dev-sec/ansible-collection-hardening/issues/364)

### sysctl - vm.mmap_rnd_bits

We are setting this sysctl to a default of `32`, some systems only support smaller values and this will generate an error. Unfortunately we cannot determine the correct applicable maximum. If you encounter this error you have to override this sysctl in your playbook.

```yaml
- hosts: localhost
  collections:
    - devsec.hardening
  roles:
    - devsec.hardening.os_hardening
  vars:
    sysctl_overwrite:
      vm.mmap_rnd_bits: 16
```

### Testing with inspec

If you're using inspec to test your machines after applying this role, please make sure to add the connecting user to the `os_ignore_users`-variable.
Otherwise inspec will fail. For more information, see [issue #124](https://github.com/dev-sec/ansible-os-hardening/issues/124).

We know that this is the case on Raspberry Pi.

## Variables

- `os_desktop_enable`
  - Default: `false`
  - Description: true if this is a desktop system, ie Xorg, KDE/GNOME/Unity/etc.
- `os_env_extra_user_paths`
  - Default: `[]`
  - Description: add additional paths to the user's `PATH` variable (default is empty).
- `os_env_umask`
  - Default: `027` or `077` depending on the platform.
  - Description: set default permissions for new files to `750` or `700`.
- `os_auth_pw_max_age`
  - Default: `60`
  - Description: maximum password age (set to `99999` to effectively disable it).
- `os_auth_pw_min_age`
  - Default: `7`
  - Description: minimum password age (before allowing any other password change).
- `os_auth_pw_remember`
  - Default: `5`
  - Description: how many used passwords are record.
- `os_auth_retries`
  - Default: `5`
  - Description: the maximum number of authentication attempts, before the account is locked for some time.
- `os_auth_lockout_time`
  - Default: `600`
  - Description: time in seconds that needs to pass, if the account was locked due to too many failed authentication attempts.
- `os_auth_timeout`
  - Default: `60`
  - Description: authentication timeout in seconds, so login will exit if this time passes.
- `os_auth_allow_homeless`
  - Default: `false`
  - Description: true if to allow users without home to login.
- `os_auth_pam_passwdqc_enable`
  - Default: `true`
  - Description: true if you want to use strong password checking in PAM using passwdqc.
- `os_auth_pam_passwdqc_options`
  - Default: `min=disabled,disabled,16,12,8`
  - Description: set to any option line (as a string) that you want to pass to passwdqc.
- `os_auth_pam_sssd_enable`
  - Default: `false` (on RHEL8/CentOS8/Fedora `true`)
  - Description: activate PAM auth support for sssd
- `os_security_users_allow`
  - Default: `[]`
  - Description: list of things, that a user is allowed to do. May contain `change_user`.
- `os_security_kernel_enable_module_loading`
  - Default: `true`
  - Description: true if you want to allowed to change kernel modules once the system is running (eg `modprobe`, `rmmod`).
- `os_security_kernel_enable_core_dump`
  - Default: `false`
  - Description: kernel is crashing or otherwise misbehaving and a kernel core dump is created.
- `os_security_suid_sgid_enforce`
  - Default: `true`
  - Description: true if you want to reduce SUID/SGID bits. There is already a list of items which are searched for configured, but you can also add your own.
- `os_security_suid_sgid_blacklist`
  - Default: `[]`
  - Description: a list of paths which should have their SUID/SGID bits removed.
- `os_security_suid_sgid_whitelist`
  - Default: `[]`
  - Description: a list of paths which should not have their SUID/SGID bits altered.
- `os_security_suid_sgid_remove_from_unknown`
  - Default: `false`
  - Description: true if you want to remove SUID/SGID bits from any file, that is not explicitly configured in a `blacklist`. This will make every Ansible-run search through the mounted filesystems looking for SUID/SGID bits that are not configured in the default and user blacklist. If it finds an SUID/SGID bit, it will be removed, unless this file is in your `whitelist`.
- `os_auth_uid_min`
  - Default: `1000`
  - Description: minimum number for automatic uid selection in useradd.
- `os_auth_uid_max`
  - Default: `60000`
  - Description: maximum number for automatic uid selection in useradd.
- `os_auth_gid_min`
  - Default: `1000`
  - Description: minimum number for automatic gid selection in groupadd.
- `os_auth_gid_max`
  - Default: `60000`
  - Description: maximum number for automatic gid selection in groupadd.
- `os_auth_sub_uid_count`
  - Default: `65536`
  - Description: If /etc/subuid exists, the commands useradd and newusers (unless the user already have subordinate user IDs) allocate SUB_UID_COUNT unused user IDs from the range SUB_UID_MIN to SUB_UID_MAX for each new user. See also `os_auth_sub_uid_min` and `os_auth_sub_uid_max`.
- `os_auth_sub_uid_min`.
  - Default: `100000`
  - Description: minimum number for automatic subordinate uid selection in useradd and newusers.
- `os_auth_sub_uid_max`
  - Default: `600100000`
  - Description: maximum number for automatic subordinate uid selection in useradd and newusers.
- `os_auth_sub_gid_count`
  - Default: `65536`
  - Description: If /etc/subuid exists, the commands useradd and newusers (unless the user already have subordinate group IDs) allocate SUB_GID_COUNT unused group IDs from the range SUB_GID_MIN to SUB_GID_MAX for each new user. See also `os_auth_sub_gid_min` and `os_auth_sub_gid_max`.
- `os_auth_sub_gid_min`
  - Default: `100000`
  - Description: minimum number for automatic subordinate gid selection in useradd and newusers.
- `os_auth_sub_gid_max`
  - Default: `600100000`
  - Description: maximum number for automatic subordinate gid selection in useradd and newusers.
- `os_security_packages_clean`
  - Default: `true`
  - Description: removes packages with known issues. See section packages.
- `os_selinux_state`
  - Default: `enforcing`
  - Description: Set the SELinux state, can be either disabled, permissive, or enforcing.
- `os_selinux_policy`
  - Default: `targeted`
  - Description: Set the SELinux polixy.
- `ufw_manage_defaults`
  - Default: `true`
  - Description: true means apply all settings with `ufw_` prefix.
- `ufw_ipt_sysctl`
  - Default: `''`
  - Description: by default it disables IPT_SYSCTL in /etc/default/ufw. If you want to overwrite /etc/sysctl.conf values using ufw - set it to your sysctl dictionary, for example `/etc/ufw/sysctl.conf`.
- `ufw_default_input_policy`
  - Default: `DROP`
  - Description: set default input policy of ufw to `DROP`.
- `ufw_default_output_policy`
  - Default: `ACCEPT`
  - Description: set default output policy of ufw to `ACCEPT`.
- `ufw_default_forward_policy`
  - Default: `DROP`
  - Description: set default forward policy of ufw to `DROP`.
- `ufw_enable_ipv6`
  - Default: `true`
  - Description: Set to `true` to apply rules to support IPv6 (no means only IPv6 on loopback accepted).
- `os_auditd_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring auditd.
- `os_auditd_max_log_file_action`
  - Default: `keep_logs`
  - Description: Defines the behaviour of auditd when its log file is filled up. Possible other values are described in the auditd.conf man page. The most common alternative to the default may be `rotate`.
- `os_auditd_max_log_file`
  - Default: `6`
  - Description: This keyword specifies the maximum file size in megabytes. When this limit is reached, it will trigger a configurable action. The value given must be numeric.
- `hidepid_option`
  - Default: `2` (on RHEL/CentOS7 `0`, see known limitations)
  - Description: `0`: This is the default setting and gives you the default behaviour. `1`: With this option an normal user would not see other processes but their own about ps, top etc, but he is still able to see process IDs in /proc. `2`: Users are only able too see their own processes (like with hidepid=1), but also the other process IDs are hidden for them in /proc.
- `proc_mnt_options`
  - Default: `rw,nosuid,nodev,noexec,relatime,hidepid={{ hidepid_option }}`
  - Description: Mount proc with hardenized options, including `hidepid` with variable value.
- `os_ignore_users`
  - Default: `['vagrant', 'kitchen']`
  - Description: Specify system accounts whose login should not be disabled and password not changed
- `os_ignore_home_folder_users`
  - Default: `lost+found`
  - Description: specify user home folders in `/home` that shouldn't be chmodded to 700
- `os_chmod_rootuser_home_folder`
  - Default: `true`
  - Description: Set to `false` to disable "chmod 700" of root's home folder
- `os_rootuser_pw_ageing`
  - Default: `false`
  - Description: Set to true to enforce password age settings for root user(s)
- `os_remove_additional_root_users`
  - Default: `false`
  - Description: When enabled and there are multiple users with UID=0, only "root" will be kept. Others will be deleted.
- `os_cron_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring cron.
- `os_ctrlaltdel_disabled`
  - Default: `false`
  - Description: Set to true to disable ctrl-alt-delete key combination.
- `os_limits_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring limits.
- `os_login_defs_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring login_defs for newly created users.
- `os_minimize_access_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring minimize_access.
- `os_pam_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring pam.
- `os_modprobe_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring modprobe.
- `os_profile_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring profile.
- `os_security_auto_logout`
  - Default: `0`
  - Description: Set timeout in seconds for logout users automatically after time. Setting this to `0` disables the timeout.
- `os_securetty_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring securetty.
- `os_sysctl_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring sysctl.
- `os_user_accounts_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring user_accounts.
- `os_rhosts_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring rhosts.
- `os_yum_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring yum.
- `os_yum_repo_file_whitelist`
  - Default: `[]`
  - Description: List of yum repository files under /etc/yum.repos.d/ which should not be altered.
- `os_apt_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring apt.
- `os_selinux_enabled`
  - Default: `true`
  - Description: Set to false to disable installing and configuring selinux.
- `os_sha_crypt_min_rounds`
  - Default: `640000`
  - Description: Define the number of minimum SHA rounds. With a lot of rounds brute forcing the password is more difficult. But note also that it more CPU resources will be needed to authenticate users. The values must be inside the 1000-999999999 range.
- `os_sha_crypt_max_rounds`
  - Default: `640000`
  - Description: Define the number of maximum SHA rounds. With a lot of rounds brute forcing the password is more difficult. But note also that it more CPU resources will be needed to authenticate users. The values must be inside the 1000-999999999 range.
- `os_mnt_boot_dir_mode`
  - Default: `0700`
  - Description: Set default perimissions for /boot
- `os_mnt_boot_enabled`
  - Default: `false`
  - Description: Set to true to configure /boot mountpoint
- `os_mnt_boot_src`
  - Default: `''`
  - Description: Set mount source for /boot
- `os_mnt_boot_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /boot
- `os_mnt_boot_filesystem`
  - Default: `""`
  - Description: Configure file system for fstab entry /boot. If empty, the current file system type will be used.
- `os_mnt_boot_dump`
  - Default: ext3 + ext4 `1` / other `0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_boot_passno`
  - Default: ext3 + ext4 `2` / other `0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_dev_dir_mode`
  - Default: `0755`
  - Description: Set default perimissions for /dev
- `os_mnt_dev_enabled`
  - Default: `true`
  - Description: Set to false to ignore /dev mountpoint
- `os_mnt_dev_src`
  - Default: `devtmpfs`
  - Description: Set mount source for /dev
- `os_mnt_dev_options`
  - Default: `'rw,nosuid,noexec'`
  - Description: Configure mount options for /dev
- `os_mnt_dev_filesystem`
  - Default: `devtmpfs`
  - Description: Configure file system for fstab entry /dev
- `os_mnt_dev_dump`
  - Default: `0`
  - Description: Configure dump for fstab entry /var/tmp.
- `os_mnt_dev_passno`
  - Default: `0`
  - Description: Configure passno for fstab entry /var/tmp.
- `os_mnt_dev_shm_dir_mode`
  - Default: `1777`
  - Description: Set default perimissions for /dev/shm
- `os_mnt_dev_shm_enabled`
  - Default: `true`
  - Description: Set to false to ignore /dev/shm mountpoint
- `os_mnt_dev_shm_src`
  - Default: `tmpfs`
  - Description: Set mount source for /dev/shm
- `os_mnt_dev_shm_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /dev/shm
- `os_mnt_dev_shm_filesystem`
  - Default: `tmpfs`
  - Description: Configure file system for fstab entry /dev/shm
- `os_mnt_dev_shm_dump`
  - Default: `0`
  - Description: Configure dump for fstab entry /var/tmp.
- `os_mnt_dev_shm_passno`
  - Default: `0`
  - Description: Configure passno for fstab entry /var/tmp.
- `os_mnt_home_dir_mode`
  - Default: `0755`
  - Description: Set default perimissions for /home
- `os_mnt_home_enabled`
  - Default: `false`
  - Description: Set to true to configure /home mountpoint
- `os_mnt_home_src`
  - Default: `""`
  - Description: Set mount source for /home. If empty, the current file system source device will be used.
- `os_mnt_home_options`
  - Default: `rw,nosuid,nodev`
  - Description: Configure mount options for /home
- `os_mnt_home_filesystem`
  - Default: `""`
  - Description: Configure file system for fstab entry /home. If empty, the current file system type will be used.
- `os_mnt_home_dump`
  - Default: ext3 + ext4 `1` / other `0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_home_passno`
  - Default: ext3 + ext4 `2` / other `0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_run_dir_mode`
  - Default: `0755`
  - Description: Set default perimissions for /run
- `os_mnt_run_enabled`
  - Default: `true`
  - Description: Set to false to ignore /run mountpoint
- `os_mnt_run_src`
  - Default: `tmpfs`
  - Description: Set mount source for /run
- `os_mnt_run_options`
  - Default: `rw,nosuid,nodev`
  - Description: Configure mount options for /run
- `os_mnt_run_filesystem`
  - Default: `tmpfs`
  - Description: Configure file system for fstab entry /run
- `os_mnt_run_dump`
  - Default: `0`
  - Description: Configure dump for fstab entry /var/tmp.
- `os_mnt_run_passno`
  - Default: `0`
  - Description: Configure passno for fstab entry /var/tmp.
- `os_mnt_tmp_dir_mode`
  - Default: `1777`
  - Description: Set default perimissions for /tmp
- `os_mnt_tmp_enabled`
  - Default: `false`
  - Description: Set to true to configure /tmp mountpoint
- `os_mnt_tmp_src`
  - Default: `""`
  - Description: Set mount source for /tmp. If empty, the current file system source device will be used.
- `os_mnt_tmp_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /tmp
- `os_mnt_tmp_filesystem`
  - Default: `""`
  - Description: Configure file system for fstab entry /tmp. If empty, the current file system type will be used.
- `os_mnt_tmp_dump`
  - Default: ext3 + ext4 `1` / other `0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_tmp_passno`
  - Default: ext3 + ext4 `2` / other `0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_var_dir_mode`
  - Default: `0755`
  - Description: Set default perimissions for /var
- `os_mnt_var_enabled`
  - Default: `false`
  - Description: Set to true to configure /var mountpoint
- `os_mnt_var_src`
  - Default: `""`
  - Description: Set mount source for /var. If empty, the current file system source device will be used.
- `os_mnt_var_options`
  - Default: `rw,nosuid,nodev`
  - Description: Configure mount options for /var
- `os_mnt_var_filesystem`
  - Default: `""`
  - Description: Configure file system for fstab entry /var. If empty, the current file system type will be used.
- `os_mnt_var_dump`
  - Default: ext3 + ext4 `1` / other `0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_var_passno`
  - Default: ext3 + ext4 `2` / other `0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_var_log_dir_mode`
  - Default: `0755`
  - Description: Set default perimissions for /var/log
- `os_mnt_var_log_enabled`
  - Default: `false`
  - Description: Set to true to configure /var/log mountpoint
- `os_mnt_var_log_src`
  - Default: `""`
  - Description: Set mount source for /var/log. If empty, the current file system source device will be used.
- `os_mnt_var_log_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /var/log
- `os_mnt_var_log_filesystem`
  - Default: `""`
  - Description: Configure file system for fstab entry /var/log. If empty, the current file system type will be used.
- `os_mnt_var_log_dump`
  - Default: ext3 + ext4 `1` / other `0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_var_log_passno`
  - Default: ext3 + ext4 `2` / other `0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_var_log_audit_dir_mode`
  - Default: `0640`
  - Description: Set default perimissions for /var/log/audit
- `os_mnt_var_log_audit_enabled`
  - Default: `false`
  - Description: Set to true to configure /var/log/audit mountpoint
- `os_mnt_var_log_audit_src`
  - Default: `""`
  - Description: Set mount source for /var/log/audit. If empty, the current file system source device will be used.
- `os_mnt_var_log_audit_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /var/log/audit
- `os_mnt_var_log_audit_filesystem`
  - Default: `""`
  - Description: Configure file system for fstab entry /var/log/audit. If empty, the current file system type will be used.
- `os_mnt_var_log_audit_dump`
  - Default: ext3 + ext4 `1` / other `0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_var_log_audit_passno`
  - Default: ext3 + ext4 `2` / other `0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_var_tmp_dir_mode`
  - Default: `1777`
  - Description: Set default perimissions for /var/tmp
- `os_mnt_var_tmp_enabled`
  - Default: `false`
  - Description: Set to true to configure /var/tmp mountpoint
- `os_mnt_var_tmp_src`
  - Default: `""`
  - Description: Set mount source for /var/tmp. If empty, the current file system source device will be used.
- `os_mnt_var_tmp_options`
  - Default: `rw,nosuid,nodev,noexec`
  - Description: Configure mount options for /var/tmp
- `os_mnt_var_tmp_filesystem`
  - Default: `""`
  - Description: Configure file system for fstab entry /var/tmp. If empty, the current file system type will be used.
- `os_mnt_var_tmp_dump`
  - Default: ext3 + ext4 `1` / other `0`
  - Description: Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_mnt_var_tmp_passno`
  - Default: ext3 + ext4 `2` / other `0`
  - Description: Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype.
- `os_netrc_enabled`
  - Default: `True`
  - Description: Configure filesystem for existence of .netrc file in homedir
- `os_netrc_whitelist_user`
  - Default: ``
  - Description: Add list of user to allow creation of .netrc in users homedir

## Packages

We remove the following packages:

- xinetd ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.1)
- inetd ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.1)
- tftp-server ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.5)
- ypserv ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.4)
- telnet-server ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.2)
- rsh-server ([NSA](https://apps.nsa.gov/iaarchive/library/ia-guidance/security-configuration/operating-systems/guide-to-the-secure-configuration-of-red-hat-enterprise.cfm), Chapter 3.2.3)
- prelink ([open-scap](https://static.open-scap.org/ssg-guides/ssg-sl7-guide-ospp-rhel7-server.html#xccdf_org.ssgproject.content_rule_disable_prelink))

## Disabled filesystems

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

## Example Playbook

```yaml
- hosts: localhost
  collections:
    - devsec.hardening
  roles:
    - os_hardening
```

## Changing sysctl variables

If you want to override sysctl-variables, you can use the `sysctl_overwrite` variable (in older versions you had to override the whole `sysctl_dict`).
So for example if you want to change the IPv4 traffic forwarding variable to `1`, do it like this:

```yaml
- hosts: localhost
  collections:
    - devsec.hardening
  roles:
    - os_hardening
  vars:
    sysctl_overwrite:
      # Enable IPv4 traffic forwarding.
      net.ipv4.ip_forward: 1
```

Alternatively you can change Ansible's [hash-behaviour](https://docs.ansible.com/ansible/latest/reference_appendices/config.html#default-hash-behaviour) to `merge`, then you only have to overwrite the single hash you need to. But please be aware that changing the hash-behaviour changes it for all your playbooks and is not recommended by Ansible.

## Improving Kernel Audit logging

By default, any process that starts before the `auditd` daemon will have an AUID of `4294967295`. To improve this and provide more accurate logging, it's recommended to add the kernel boot parameter `audit=1` to you configuration. Without doing this, you will find that your `auditd` logs fail to properly audit all processes.

For more information, please see this [upstream documentation](https://www.kernel.org/doc/html/latest/admin-guide/kernel-parameters.html) and your system's boot loader documentation for how to configure additional kernel parameters.

## More information

We use specific PAM configuration for every linux distribution. This is a very diverse area, since every vendor seems to push their own system for managing PAM. We used following guides and sources for our configuration.

- on Debian/Ubuntu we use [pam-config-framework](https://wiki.ubuntu.com/PAMConfigFrameworkSpec)
- RHEL8 and compatible use information from [authselect](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_authentication_and_authorization_in_rhel/configuring-user-authentication-using-authselect_configuring-authentication-and-authorization-in-rhel), but our setup disables the configuration from authselect
- RHEL 6/7 and compatible use [authconfig](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system-level_authentication_guide/authconfig-install), but our setup disables the configuration from authconfig
- for RHEL 6/7 we also use information from [Desktop Security](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/security_guide/chap-hardening_your_system_with_tools_and_services#sec-Desktop_Security)

This role is mostly based on guides by:

- [Arch Linux wiki, Sysctl hardening](https://wiki.archlinux.org/index.php/Sysctl)
- [NSA: Guide to the Secure Configuration of Red Hat Enterprise Linux 5](http://www.nsa.gov/ia/_files/os/redhat/rhel5-guide-i731.pdf)
- [Ubuntu Security/Features](https://wiki.ubuntu.com/Security/Features)
- [Deutsche Telekom, Group IT Security, Security Requirements (German)](https://www.telekom.com/psa)
