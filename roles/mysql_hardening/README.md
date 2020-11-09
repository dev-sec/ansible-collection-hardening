# devsec.mysql_hardening

![devsec.mysql_hardening](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.mysql_hardening/badge.svg)

## Description

This role provides security configurations for MySQL and its derivates. It is intended to set up production-ready MySQL instances that are configured with minimal surface for attackers. Furthermore it is intended to be compliant with the [DevSec MySQL Baseline](https://github.com/dev-sec/mysql-baseline).

It configures:

- Permissions for the various configuration files and folders
- Removes anonymous users, root-users without a password and test databases
- various hardening options inside MySQL

## Requirements

- Ansible 2.9.0
- An existing MySQL installation

### Example playbook

```yml
- hosts: localhost
  collections:
    - devsec.hardening
  roles:
    - devsec.hardening.mysql_hardening
```

This role expects an existing installation of MySQL or MariaDB. Please ensure that the following variables are set accordingly:

- `mysql_hardening_enabled: yes` role is enabled by default and can be disabled without removing it from a playbook. You can use conditional variable, for example: `mysql_hardening_enabled: "{{ true if mysql_enabled else false }}"`
- `mysql_hardening_user: 'mysql'` The user that mysql runs as.
- `mysql_datadir: '/var/lib/mysql'` The MySQL data directory
- `mysql_hardening_mysql_hardening_conf_file: '/etc/mysql/conf.d/hardening.cnf'` The path to the configuration file where the hardening will be performed

## Role Variables

- `mysql_hardening_chroot`
  - Default: ""
  - Description: [chroot](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_chroot)
- `mysql_hardening_options.safe-user-create`
  - Default: 1
  - Description: [safe-user-create](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_safe-user-create)
- `mysql_hardening_options.secure-auth`
  - Default: 1
  - Description: [secure-auth](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_secure-auth)
- `mysql_hardening_options.skip-symbolic-links`
  - Default: 1
  - Description: [skip-symbolic-links](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_symbolic-links)
- `mysql_hardening_skip_grant_tables:`
  - Default: false
  - Description: [skip-grant-tables](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_skip-grant-tables)
- `mysql_hardening_skip_show_database`
  - Default: 1
  - Description: [skip-show-database](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_skip-show-database)
- `mysql_hardening_options.local-infile`
  - Default: 0
  - Description: [local-infile](http://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_local_infile)
- `mysql_hardening_options.allow-suspicious-udfs`
  - Default: 0
  - Description: [allow-suspicious-udfs](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_allow-suspicious-udfs)
- `mysql_hardening_chroot.automatic-sp-privileges`
  - Default: 0
  - Description: [automatic_sp_privileges](https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_automatic_sp_privileges)
- `mysql_hardening_options.secure-file-priv`
  - Default: /tmp
  - Description: [secure-file-priv](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_secure-file-priv)
- `mysql_allow_remote_root`
  - Default: false
  - Description: delete remote root users
- `mysql_remove_anonymous_users`
  - Default: true
  - Description: remove users without authentication
- `mysql_remove_test_database`
  - Default: true
  - Description: remove test database

Further information is available at [Deutsche Telekom (German)](http://www.telekom.com/static/-/155996/7/technische-sicherheitsanforderungen-si) and [Symantec](http://www.symantec.com/connect/articles/securing-mysql-step-step)
