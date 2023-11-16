# devsec.mysql_hardening

[![devsec.mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/mysql_hardening.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/mysql_hardening.yml)

## Description

This role provides security configurations for MySQL and its derivates. It is intended to set up production-ready MySQL instances that are configured with minimal surface for attackers. Furthermore it is intended to be compliant with the [DevSec MySQL Baseline](https://github.com/dev-sec/mysql-baseline).

It configures:

- Permissions for the various configuration files and folders
- Removes anonymous users, users without a password or authentication_string and test databases
- various hardening options inside MySQL

Changes of options `log_error` or `datadir` in `mysql_hardening_options` will not be checked for correct permissions. Please change/set `log_error` or `datadir` with the installation role of MySQL before running this role, or you can run this role twice.

Further information is available at [Deutsche Telekom (German)](http://www.telekom.com/static/-/155996/7/technische-sicherheitsanforderungen-si) and [Symantec](http://www.symantec.com/connect/articles/securing-mysql-step-step)

## Requirements

- An existing installation of MySQL or MariaDB.
- python-jmespath on the ansible host

<!-- BEGIN_ANSIBLE_DOCS -->

## Supported Operating Systems
- EL
  - 7, 8, 9
- Ubuntu
  - bionic, focal, jammy
- Debian
  - bullseye, buster
- Amazon
- opensuse

## Role Variables

- `mysql_daemon_enabled`
  - Default: `true`
  - Description: Whether to enable the MySQL-service so it starts on boot
  - Type: bool
  - Required: no
- `mysql_hardening_chroot`
  - Default: ``
  - Description: [chroot](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_chroot)
  - Type: str
  - Required: no
- `mysql_hardening_chroot.automatic-sp-privileges`
  - Default: `0`
  - Description: [automatic_sp_privileges](https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_automatic_sp_privileges)
  - Type: int
  - Required: no
- `mysql_hardening_enabled`
  - Default: `true`
  - Description: Whether to run the hardening
  - Type: bool
  - Required: no
- `mysql_hardening_options.allow-suspicious-udfs`
  - Default: `0`
  - Description: [allow-suspicious-udfs](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_allow-suspicious-udfs)
  - Type: int
  - Required: no
- `mysql_hardening_options.local-infile`
  - Default: `0`
  - Description: [local-infile](http://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_local_infile)
  - Type: int
  - Required: no
- `mysql_hardening_options.safe-user-create`
  - Default: `1`
  - Description: [safe-user-create](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_safe-user-create)
  - Type: int
  - Required: no
- `mysql_hardening_options.secure-auth`
  - Default: `1`
  - Description: [secure-auth](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_secure-auth)
  - Type: int
  - Required: no
- `mysql_hardening_options.secure-file-priv`
  - Default: `/tmp`
  - Description: [secure-file-priv](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_secure-file-priv)
  - Type: str
  - Required: no
- `mysql_hardening_options.skip-symbolic-links`
  - Default: `1`
  - Description: [skip-symbolic-links](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_symbolic-links)
  - Type: int
  - Required: no
- `mysql_hardening_restart_mysql`
  - Default: `true`
  - Description: Restart mysql after running this role
  - Type: bool
  - Required: no
- `mysql_hardening_skip_grant_tables:`
  - Default: `false`
  - Description: [skip-grant-tables](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_skip-grant-tables)
  - Type: bool
  - Required: no
- `mysql_hardening_skip_show_database`
  - Default: `1`
  - Description: [skip-show-database](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_skip-show-database)
  - Type: int
  - Required: no
- `mysql_remove_anonymous_users`
  - Default: `true`
  - Description: Set to `false` to keep users without authentication
  - Type: bool
  - Required: no
- `mysql_remove_remote_root`
  - Default: `true`
  - Description: If `true`, root can only connect from localhost. Set to `false` to not remove remote root users.
  - Type: bool
  - Required: no
- `mysql_remove_test_database`
  - Default: `true`
  - Description: Set to `false` to keep the test database
  - Type: bool
  - Required: no
- `mysql_root_password`
  - Default: `-----====>SetR00tPa$$wordH3r3!!!<====-----`
  - Description: The default password. Please change or overwrite it
  - Type: str
  - Required: no
- `mysql_user_home`
  - Default: `{{ ansible_env.HOME }}`
  - Description: The path where the `.my.cnf` will be stored
  - Type: str
  - Required: no

## Dependencies

None.

## Example Playbook

```
- hosts: all
  roles:
    - name: devsec.hardening.mysql_hardening
```

<!-- END_ANSIBLE_DOCS -->
