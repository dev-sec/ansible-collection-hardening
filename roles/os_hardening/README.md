# devsec.os_hardening

![devsec.os_hardening](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.os_hardening/badge.svg)
![devsec.os_hardening VM](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.os_hardening%20VM/badge.svg)

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

| Variable | Default | Description | Type | Required |
| -------- | ------- | ----------- | ---- | -------- |
| `os_apt_enabled` | true | Set to false to disable installing and configuring apt. | bool | n |
| `os_auditd_action_mail_acct` | root | If `space_left_action` or `admin_space_left_action` are set to `email`, uses the address or alias to send the email using `/usr/lib/sendmail`. of events created on one system but reported/analyzed on another system. | str | n |
| `os_auditd_admin_space_left` | 50 | This is a numeric value in megabytes that tells the audit daemon when to perform a configurable action because the system is running low on disk space. | int | n |
| `os_auditd_admin_space_left_action` | SUSPEND | This parameter tells the system what action to take when the system has detected that it is low on disk space. Valid values are ignore, syslog, rotate, email, exec, suspend, single, and halt. | str | n |
| `os_auditd_disk_error_action` | SUSPEND | This parameter tells the system what action to take whenever there is an error detected when writing audit events to disk or rotating logs. Valid values are ignore, syslog, exec, suspend, single, and halt. | str | n |
| `os_auditd_disk_full_action` | SUSPEND | This parameter tells the system what action to take when the system has detected that the partition to which log files are written has become full. Valid values are ignore, syslog, rotate, exec, suspend, single, and halt. | str | n |
| `os_auditd_enabled` | true | Set to false to disable installing and configuring auditd. | bool | n |
| `os_auditd_flush` | INCREMENTAL | Valid values are none, incremental, incremental_async, data, and sync. | str | n |
| `os_auditd_log_format` | RAW | Describes how the information should be stored on disk. There are 2 options - raw and enriched. | str | n |
| `os_auditd_log_group` | root | specifies the group that is applied to the log file's permissions. The group name can be either numeric or spelled out. | str | n |
| `os_auditd_max_log_file` | 6 | This keyword specifies the maximum file size in megabytes. When this limit is reached, it will trigger a configurable action. The value given must be numeric. | int | n |
| `os_auditd_max_log_file_action` | keep_logs | Defines the behaviour of auditd when its log file is filled up. Possible other values are described in the auditd.conf man page. The most common alternative to the default may be `rotate`. | str | n |
| `os_auditd_num_logs` | 5 | This keyword specifies the number of log files to keep if `rotate` is given as the max_log_file_action. The value given must be numeric. | int | n |
| `os_auditd_space_left` | 75 | If the free space in the filesystem containing log_file drops below this value, the audit daemon takes the action specified by space_left_action. | int | n |
| `os_auditd_space_left_action` | SYSLOG | This parameter tells the system what action to take when the system has detected that it is starting to get low on disk space. Valid values are ignore, syslog, rotate, email, exec, suspend, single, and halt. | str | n |
| `os_auth_allow_homeless` | false | true if to allow users without home to login. | bool | n |
| `os_auth_gid_max` | 60000 | maximum number for automatic gid selection in groupadd. | int | n |
| `os_auth_gid_min` | 1000 | minimum number for automatic gid selection in groupadd. | int | n |
| `os_auth_lockout_time` | 600 | time in seconds that needs to pass, if the account was locked due to too many failed authentication attempts. | int | n |
| `os_auth_pam_oddjob_mkhomedir` | false | Enables automatic homedir e.g. in FreeIPA environments | bool | n |
| `os_auth_pam_passwdqc_enable` | true | true if you want to use strong password checking in PAM using passwdqc. | bool | n |
| `os_auth_pam_passwdqc_options` | min=disabled,disabled,16,12,8 | set to any option line (as a string) that you want to pass to passwdqc. | str | n |
| `os_auth_pam_pwquality_options` | try_first_pass retry=3 authtok_type= | Options to pass to the PAM module pwquality | str | n |
| `os_auth_pw_max_age` | 60 | maximum password age (set to `99999` to effectively disable it). | int | n |
| `os_auth_pw_min_age` | 7 | minimum password age (before allowing any other password change). | int | n |
| `os_auth_pw_remember` | 5 | how many used passwords are record. | int | n |
| `os_auth_pw_warn_age` | 7 | number of days of warning before password expires. | int | n |
| `os_auth_retries` | 5 | the maximum number of authentication attempts, before the account is locked for some time. | int | n |
| `os_auth_root_ttys` | ["console", "tty1", "tty2", "tty3", "tty4", "tty5", "tty6"] | A list of TTYs, from which root can log in, see `man securetty` for reference | list | n |
| `os_auth_sub_gid_count` | 65536 | If /etc/subuid exists, the commands useradd and newusers (unless the user already have subordinate group IDs) allocate SUB_GID_COUNT unused group IDs from the range SUB_GID_MIN to SUB_GID_MAX for each new user. See also `os_auth_sub_gid_min` and `os_auth_sub_gid_max`. | int | n |
| `os_auth_sub_gid_max` | 600100000 | maximum number for automatic subordinate gid selection in useradd and newusers. | int | n |
| `os_auth_sub_gid_min` | 100000 | minimum number for automatic subordinate gid selection in useradd and newusers. | int | n |
| `os_auth_sub_uid_count` | 65536 | If /etc/subuid exists, the commands useradd and newusers (unless the user already have subordinate user IDs) allocate SUB_UID_COUNT unused user IDs from the range SUB_UID_MIN to SUB_UID_MAX for each new user. See also `os_auth_sub_uid_min` and `os_auth_sub_uid_max`. | int | n |
| `os_auth_sub_uid_max` | 600100000 | maximum number for automatic subordinate uid selection in useradd and newusers. | int | n |
| `os_auth_sub_uid_min` | 100000 | minimum number for automatic subordinate uid selection in useradd and newusers. | int | n |
| `os_auth_timeout` | 60 | authentication timeout in seconds, so login will exit if this time passes. | int | n |
| `os_auth_uid_max` | 60000 | maximum number for automatic uid selection in useradd. | int | n |
| `os_auth_uid_min` | 1000 | minimum number for automatic uid selection in useradd. | int | n |
| `os_chfn_restrict` | '' | Indicate which fields are changeable by chfn. | str | n |
| `os_chmod_home_folders` | true | Set to `false` to disable "chmod 700" of home folders for regular users | bool | n |
| `os_chmod_rootuser_home_folder` | true | Set to `false` to disable "chmod 700" of root's home folder | bool | n |
| `os_cron_enabled` | true | Set to false to disable installing and configuring cron. | bool | n |
| `os_ctrlaltdel_disabled` | false | Set to true to disable ctrl-alt-delete key combination. | bool | n |
| `os_desktop_enable` | false | true if this is a desktop system, ie Xorg, KDE/GNOME/Unity/etc. | bool | n |
| `os_env_extra_user_paths` | "[]" | Specify additional paths that should be checked for binaries where access will be minimized | list | n |
| `os_env_user_paths` | ["/usr/local/sbin", "/usr/local/bin", "/usr/sbin", "/usr/bin", "/sbin", "/bin"] | Specify paths that should be checked for binaries where access will be minimized | list | n |
| `os_filesystem_whitelist` | "[]" | A list of filesystems that should not be disabled | list | n |
| `os_hardening_enabled` | true | Whether to run the hardening | bool | n |
| `os_ignore_home_folder_users` | "[]" | Specify user accounts, whose home folders shouldn't be chmodded to 700 when "os_chmod_home_folders" is enabled. | list | n |
| `os_ignore_users` | ["vagrant", "kitchen"] | Specify system accounts whose login should not be disabled and password not changed | list | n |
| `os_limits_enabled` | true | Set to false to disable installing and configuring limits. | bool | n |
| `os_login_defs_enabled` | true | Set to false to disable installing and configuring login_defs for newly created users. | bool | n |
| `os_minimize_access_enabled` | true | Set to false to disable installing and configuring minimize_access. | bool | n |
| `os_mnt_boot_dir_mode` | 0700 | Set default perimissions for /boot | str | n |
| `os_mnt_boot_dump` | ext3 + ext4 = 1 / other = 0 | Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_boot_enabled` | false | Set to true to configure /boot mountpoint | bool | n |
| `os_mnt_boot_filesystem` | '' | Configure file system for fstab entry /boot. If empty, the current file system type will be used. | str | n |
| `os_mnt_boot_options` | rw,nosuid,nodev,noexec | Configure mount options for /boot | str | n |
| `os_mnt_boot_passno` | ext3 + ext4 = 2 / other = 0 | Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_boot_src` | '' | Set mount source for /boot | str | n |
| `os_mnt_dev_dir_mode` | 0755 | Set default perimissions for /dev | str | n |
| `os_mnt_dev_dump` | 0 | Configure dump for fstab entry /var/tmp. | str | n |
| `os_mnt_dev_enabled` | true | Set to false to ignore /dev mountpoint | bool | n |
| `os_mnt_dev_filesystem` | devtmpfs | Configure file system for fstab entry /dev | str | n |
| `os_mnt_dev_options` | rw,nosuid,noexec | Configure mount options for /dev | str | n |
| `os_mnt_dev_passno` | 0 | Configure passno for fstab entry /var/tmp. | str | n |
| `os_mnt_dev_shm_dir_mode` | 1777 | Set default perimissions for /dev/shm | str | n |
| `os_mnt_dev_shm_dump` | 0 | Configure dump for fstab entry /var/tmp. | str | n |
| `os_mnt_dev_shm_enabled` | true | Set to false to ignore /dev/shm mountpoint | bool | n |
| `os_mnt_dev_shm_filesystem` | tmpfs | Configure file system for fstab entry /dev/shm | str | n |
| `os_mnt_dev_shm_options` | rw,nosuid,nodev,noexec | Configure mount options for /dev/shm | str | n |
| `os_mnt_dev_shm_passno` | 0 | Configure passno for fstab entry /var/tmp. | str | n |
| `os_mnt_dev_shm_src` | tmpfs | Set mount source for /dev/shm | str | n |
| `os_mnt_dev_src` | devtmpfs | Set mount source for /dev | str | n |
| `os_mnt_home_dir_mode` | 0755 | Set default perimissions for /home | str | n |
| `os_mnt_home_dump` | ext3/4 = 1, others = 0 | Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_home_enabled` | false | Set to true to configure /home mountpoint | bool | n |
| `os_mnt_home_filesystem` | '' | Configure file system for fstab entry /home. If empty, the current file system type will be used. | str | n |
| `os_mnt_home_options` | rw,nosuid,nodev | Configure mount options for /home | str | n |
| `os_mnt_home_passno` | ext3/4 = 2, others = 0 | Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_home_src` | '' | Set mount source for /home. If empty, the current file system source device will be used. | str | n |
| `os_mnt_run_dir_mode` | 0755 | Set default perimissions for /run | str | n |
| `os_mnt_run_dump` | 0 | Configure dump for fstab entry /var/tmp. | str | n |
| `os_mnt_run_enabled` | true | Set to false to ignore /run mountpoint | bool | n |
| `os_mnt_run_filesystem` | tmpfs | Configure file system for fstab entry /run | str | n |
| `os_mnt_run_options` | rw,nosuid,nodev | Configure mount options for /run | str | n |
| `os_mnt_run_passno` | 0 | Configure passno for fstab entry /var/tmp. | str | n |
| `os_mnt_run_src` | tmpfs | Set mount source for /run | str | n |
| `os_mnt_tmp_dir_mode` | 1777 | Set default perimissions for /tmp | str | n |
| `os_mnt_tmp_dump` | ext3/4 = 1, others = 0 | Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_tmp_enabled` | false | Set to true to configure /tmp mountpoint | bool | n |
| `os_mnt_tmp_filesystem` | '' | Configure file system for fstab entry /tmp. If empty, the current file system type will be used. | str | n |
| `os_mnt_tmp_options` | rw,nosuid,nodev,noexec | Configure mount options for /tmp | str | n |
| `os_mnt_tmp_passno` | ext3/4 = 2, others = 0 | Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_tmp_src` | '' | Set mount source for /tmp. If empty, the current file system source device will be used. | str | n |
| `os_mnt_var_dir_mode` | 0755 | Set default perimissions for /var | str | n |
| `os_mnt_var_dump` | ext3/4 = 1, others = 0 | Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_var_enabled` | false | Set to true to configure /var mountpoint | bool | n |
| `os_mnt_var_filesystem` | '' | Configure file system for fstab entry /var. If empty, the current file system type will be used. | str | n |
| `os_mnt_var_log_audit_dir_mode` | 0640 | Set default perimissions for /var/log/audit | str | n |
| `os_mnt_var_log_audit_dump` | ext3/4 = 1, others = 0 | Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_var_log_audit_enabled` | false | Set to true to configure /var/log/audit mountpoint | bool | n |
| `os_mnt_var_log_audit_filesystem` | '' | Configure file system for fstab entry /var/log/audit. If empty, the current file system type will be used. | str | n |
| `os_mnt_var_log_audit_options` | rw,nosuid,nodev,noexec | Configure mount options for /var/log/audit | str | n |
| `os_mnt_var_log_audit_passno` | ext3/4 = 2, others = 0 | Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_var_log_audit_src` | '' | Set mount source for /var/log/audit. If empty, the current file system source device will be used. | str | n |
| `os_mnt_var_log_dir_mode` | 0755 | Set default perimissions for /var/log | str | n |
| `os_mnt_var_log_dump` | ext3/4 = 1, others = 0 | Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_var_log_enabled` | false | Set to true to configure /var/log mountpoint | bool | n |
| `os_mnt_var_log_filesystem` | '' | Configure file system for fstab entry /var/log. If empty, the current file system type will be used. | str | n |
| `os_mnt_var_log_options` | rw,nosuid,nodev,noexec | Configure mount options for /var/log | str | n |
| `os_mnt_var_log_passno` | ext3/4 = 2, others = 0 | Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_var_log_src` | '' | Set mount source for /var/log. If empty, the current file system source device will be used. | str | n |
| `os_mnt_var_options` | rw,nosuid,nodev | Configure mount options for /var | str | n |
| `os_mnt_var_passno` | ext3/4 = 2, others = 0 | Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_var_src` | '' | Set mount source for /var. If empty, the current file system source device will be used. | str | n |
| `os_mnt_var_tmp_dir_mode` | 1777 | Set default perimissions for /var/tmp | str | n |
| `os_mnt_var_tmp_dump` | ext3/4 = 1, others = 0 | Configure dump for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_var_tmp_enabled` | false | Set to true to configure /var/tmp mountpoint | bool | n |
| `os_mnt_var_tmp_filesystem` | '' | Configure file system for fstab entry /var/tmp. If empty, the current file system type will be used. | str | n |
| `os_mnt_var_tmp_options` | rw,nosuid,nodev,noexec | Configure mount options for /var/tmp | str | n |
| `os_mnt_var_tmp_passno` | ext3/4 = 2, others = 0 | Configure passno for fstab entry /var/tmp. If empty, the default depends on fstype. | str | n |
| `os_mnt_var_tmp_src` | '' | Set mount source for /var/tmp. If empty, the current file system source device will be used. | str | n |
| `os_modprobe_enabled` | true | Set to false to disable installing and configuring modprobe. | bool | n |
| `os_netrc_enabled` | true | Configure filesystem for existence of .netrc file in homedir | bool | n |
| `os_netrc_whitelist_user` | "[]" | Add list of user to allow creation of .netrc in users homedir | list | n |
| `os_pam_enabled` | true | Set to false to disable installing and configuring pam. | bool | n |
| `os_profile_enabled` | true | Set to false to disable installing and configuring profile. | bool | n |
| `os_remove_additional_root_users` | false | When enabled and there are multiple users with UID=0, only "root" will be kept. Others will be deleted. | bool | n |
| `os_rhosts_enabled` | true | Set to false to disable installing and configuring rhosts. | bool | n |
| `os_rootuser_pw_ageing` | false | Set to true to enforce password age settings for root user(s) | bool | n |
| `os_securetty_enabled` | true | Set to false to disable installing and configuring securetty. | bool | n |
| `os_security_auto_logout` | 0 | Set timeout in seconds for logout users automatically after time. Setting this to `0` disables the timeout. | int | n |
| `os_security_init_prompt` | true | The PROMPT option provides console users the ability to interactively boot the system and select which services to start on boot. | bool | n |
| `os_security_init_single` | false | Single-user mode is intended as a system recovery method, providing a single user root access to the system by providing a boot option at startup. By default, no authentication is performed if single-user mode is selected. To require entry of the root password even if the system is started in single-user mode, set this to false | bool | n |
| `os_security_kernel_enable_core_dump` | false | kernel is crashing or otherwise misbehaving and a kernel core dump is created. | bool | n |
| `os_security_kernel_enable_module_loading` | true | true if you want to allowed to change kernel modules once the system is running (eg `modprobe`, `rmmod`). WARNING - Rebuilding initramfs is deprecated and will be removed in the next major release. For more information take a look at this issue <https://github.com/dev-sec/ansible-collection-hardening/pull/591> | bool | n |
| `os_security_packages_clean` | true | removes packages with known issues. See section packages. | bool | n |
| `os_security_packages_list` | ["xinetd", "inetd", "ypserv", "telnet-server", "rsh-server", "prelink"] | List of deprecated or insecure packages to remove | list | n |
| `os_security_suid_sgid_blacklist` | "[]" | a list of paths which should have their SUID/SGID bits removed. | list | n |
| `os_security_suid_sgid_enforce` | true | true if you want to reduce SUID/SGID bits. There is already a list of items which are searched for configured, but you can also add your own. | bool | n |
| `os_security_suid_sgid_remove_from_unknown` | false | true if you want to remove SUID/SGID bits from any file, that is not explicitly configured in a `blacklist`. This will make every Ansible-run search through the mounted filesystems looking for SUID/SGID bits that are not configured in the default and user blacklist. If it finds an SUID/SGID bit, it will be removed, unless this file is in your `whitelist`. | bool | n |
| `os_security_suid_sgid_whitelist` | "[]" | a list of paths which should not have their SUID/SGID bits altered. | list | n |
| `os_security_users_allow` | "[]" | list of things, that a user is allowed to do. May contain `change_user`. | list | n |
| `os_selinux_enabled` | true | Set to false to disable installing and configuring selinux. | bool | n |
| `os_selinux_policy` | targeted | Set the SELinux polixy. | str | n |
| `os_selinux_state` | enforcing | Set the SELinux state, can be either disabled, permissive, or enforcing. | str | n |
| `os_sha_crypt_max_rounds` | 640000 | Define the number of maximum SHA rounds. With a lot of rounds brute forcing the password is more difficult. But note also that it more CPU resources will be needed to authenticate users. The values must be inside the 1000-999999999 range. | int | n |
| `os_sha_crypt_min_rounds` | 640000 | Define the number of minimum SHA rounds. With a lot of rounds brute forcing the password is more difficult. But note also that it more CPU resources will be needed to authenticate users. The values must be inside the 1000-999999999 range. | int | n |
| `os_sysctl_enabled` | true | Set to false to disable installing and configuring sysctl. | bool | n |
| `os_unused_filesystems` | ["cramfs", "freevxfs", "jffs2", "hfs", "hfsplus", "squashfs", "udf", "vfat", "dccp", "rds", "sctp", "tipc"] | Disable this list of unused filesystems | list | n |
| `os_user_accounts_enabled` | true | Set to false to disable installing and configuring user_accounts. | bool | n |
| `os_user_pw_ageing` | true | Set to false to disable password age enforcement on existing users | bool | n |
| `os_users_without_password_ageing` | "[]" | List of users, where password ageing should not be enforced even if "os_user_pw_ageing" is enabled | list | n |
| `os_yum_enabled` | true | Set to false to disable installing and configuring yum. | bool | n |
| `os_yum_repo_file_whitelist` | "[]" | List of yum repository files under /etc/yum.repos.d/ which should not be altered. | list | n |
| `proc_mnt_options` | rw,nosuid,nodev,noexec,relatime | Mount proc with hardenized options. Note that the hidepid option is set separately in vars/. | str | n |
| `sysctl_config` | {"fs.protected_hardlinks": 1, "fs.protected_symlinks": 1, "fs.protected_fifos": 1, "fs.protected_regular": 2, "fs.suid_dumpable": 0, "kernel.core_uses_pid": 1, "kernel.kptr_restrict": 2, "kernel.kexec_load_disabled": 1, "kernel.sysrq": 0, "kernel.randomize_va_space": 2, "kernel.yama.ptrace_scope": 1, "net.ipv4.ip_forward": 0, "net.ipv6.conf.all.forwarding": 0, "net.ipv4.conf.all.rp_filter": 1, "net.ipv4.conf.default.rp_filter": 1, "net.ipv4.icmp_echo_ignore_broadcasts": 1, "net.ipv4.icmp_ignore_bogus_error_responses": 1, "net.ipv4.icmp_ratelimit": 100, "net.ipv4.icmp_ratemask": 88089, "net.ipv4.tcp_timestamps": 0, "net.ipv4.conf.all.arp_ignore": 1, "net.ipv4.conf.all.arp_announce": 2, "net.ipv4.tcp_rfc1337": 1, "net.ipv4.tcp_syncookies": 1, "net.ipv4.conf.all.shared_media": 1, "net.ipv4.conf.default.shared_media": 1, "net.ipv4.conf.all.accept_source_route": 0, "net.ipv4.conf.default.accept_source_route": 0, "net.ipv6.conf.all.accept_source_route": 0, "net.ipv6.conf.default.accept_source_route": 0, "net.ipv4.conf.all.send_redirects": 0, "net.ipv4.conf.default.send_redirects": 0, "net.ipv4.conf.all.log_martians": 1, "net.ipv4.conf.default.log_martians": 1, "net.ipv4.conf.default.accept_redirects": 0, "net.ipv4.conf.all.accept_redirects": 0, "net.ipv4.conf.all.secure_redirects": 0, "net.ipv4.conf.default.secure_redirects": 0, "net.ipv6.conf.default.accept_redirects": 0, "net.ipv6.conf.all.accept_redirects": 0, "net.ipv6.conf.all.accept_ra": 0, "net.ipv6.conf.default.accept_ra": 0, "net.ipv6.conf.default.router_solicitations": 0, "net.ipv6.conf.all.router_solicitations": 0, "net.ipv6.conf.default.accept_ra_rtr_pref": 0, "net.ipv6.conf.default.accept_ra_pinfo": 0, "net.ipv6.conf.default.accept_ra_defrtr": 0, "net.ipv6.conf.default.autoconf": 0, "net.ipv6.conf.all.autoconf": 0, "net.ipv6.conf.default.dad_transmits": 0, "net.ipv6.conf.default.max_addresses": 1, "vm.mmap_min_addr": 65536, "vm.mmap_rnd_bits": 32, "vm.mmap_rnd_compat_bits": 16} | various sysctl-settings | dict | n |
| `sysctl_overwrite` | "{}" | To overwrite options in the `sysctl_config`-dict, overwrite them here. | dict | n |
| `ufw_default_application_policy` | SKIP | The default application policy is skip, which means that the update --add-new command will do nothing | str | n |
| `ufw_default_forward_policy` | DROP | set default forward policy of ufw to `DROP`. | str | n |
| `ufw_default_input_policy` | DROP | set default input policy of ufw to `DROP`. | str | n |
| `ufw_default_output_policy` | ACCEPT | set default output policy of ufw to `ACCEPT`. | str | n |
| `ufw_enable_ipv6` | true | Set to `true` to apply rules to support IPv6 (no means only IPv6 on loopback accepted). | bool | n |
| `ufw_ipt_modules` | nf_conntrack_ftp nf_nat_ftp nf_conntrack_netbios_ns | Define which netfilter modules to load | str | n |
| `ufw_ipt_sysctl` | '' | by default it disables IPT_SYSCTL in /etc/default/ufw. If you want to overwrite /etc/sysctl.conf values using ufw - set it to your sysctl dictionary, for example `/etc/ufw/sysctl.conf`. | str | n |
| `ufw_manage_builtins` | no | If this variable is set to 'yes', on stop and reload the built-in chains are flushed. If it is set to 'no', on stop and reload the ufw secondary chains are removed and the ufw primary chains are flushed | str | n |
| `ufw_manage_defaults` | true | true means apply all settings with `ufw_` prefix. | bool | n |

## Dependencies

None.

## Example Playbook

```
- hosts: all
  roles:
    - name: devsec.hardening.os_hardening
```

<!-- END_ANSIBLE_DOCS -->

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
  collections:
    - devsec.hardening
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
