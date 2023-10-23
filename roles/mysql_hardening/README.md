# devsec.mysql_hardening

![devsec.mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/workflows/devsec.mysql_hardening/badge.svg)

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

| Variable | Default | Description | Type | Required |
| -------- | ------- | ----------- | ---- | -------- |
| `mysql_daemon_enabled` | true | Whether to enable the MySQL-service so it starts on boot | bool | n |
| `mysql_hardening_chroot.automatic-sp-privileges` | 0 | [automatic_sp_privileges](https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_automatic_sp_privileges) | int | n |
| `mysql_hardening_enabled` | true | Whether to run the hardening | bool | n |
| `mysql_hardening_options.allow-suspicious-udfs` | 0 | [allow-suspicious-udfs](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_allow-suspicious-udfs) | int | n |
| `mysql_hardening_options.local-infile` | 0 | [local-infile](http://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_local_infile) | int | n |
| `mysql_hardening_options.safe-user-create` | 1 | [safe-user-create](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_safe-user-create) | int | n |
| `mysql_hardening_options.secure-auth` | 1 | [secure-auth](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_secure-auth) | int | n |
| `mysql_hardening_options.secure-file-priv` | /tmp | [secure-file-priv](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_secure-file-priv) | str | n |
| `mysql_hardening_options.skip-symbolic-links` | 1 | [skip-symbolic-links](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_symbolic-links) | int | n |
| `mysql_hardening_restart_mysql` | true | Restart mysql after running this role | bool | n |
| `mysql_hardening_skip_grant_tables:` | false | [skip-grant-tables](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_skip-grant-tables) | bool | n |
| `mysql_hardening_skip_show_database` | 1 | [skip-show-database](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_skip-show-database) | int | n |
| `mysql_remove_anonymous_users` | true | Set to `false` to keep users without authentication | bool | n |
| `mysql_remove_remote_root` | true | If `true`, root can only connect from localhost. Set to `false` to not remove remote root users. | bool | n |
| `mysql_remove_test_database` | true | Set to `false` to keep the test database | bool | n |
| `mysql_root_password` | -----====>SetR00tPa$$wordH3r3!!!<====----- | The default password. Please change or overwrite it | str | n |
| `mysql_user_home` | {{ ansible_env.HOME }} | The path where the `.my.cnf` will be stored | str | n |

## Dependencies

None.

## Example Playbook

```
- hosts: all
  roles:
    - name: devsec.hardening.mysql_hardening
```

<!-- END_ANSIBLE_DOCS -->
