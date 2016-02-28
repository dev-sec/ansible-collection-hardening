# mysql-hardening (Ansible role)

[![Gitter Chat](https://badges.gitter.im/Join%20Chat.svg)][3]

## Description

Provides security configurations for MySQL. It is intended to set up production-ready mysql instances that are configured with minimal surface for attackers.

This role focuses on security configuration of MySQL. Therefore you can add this hardening role alongside your existing MySQL configuration in Ansible.

## Requirements

* Ansible

## Usage

Before you use this role make sure to have a valid login-configuration in `~/.my.cnf` so Ansible is able to login into your database.

### Example Playbook

    - hosts: localhost
      roles:
        - hardening.mysql-hardening

This hardening role installs the hardening but expects an existing installation of MySQL, MariaDB or Percona. Please ensure that the following variables are set accordingly:

- `mysql_hardening_user: 'mysql'` The user that mysql runs as.
- `mysql_datadir: '/var/lib/mysql'` The MySQL data directory
- `mysql_hardening_hardening_conf: '/etc/mysql/conf.d/hardening.cnf'` The path to the configuration file where the hardening will be performed

## Security Options

Further information is already available at [Deutsche Telekom (German)](http://www.telekom.com/static/-/155996/7/technische-sicherheitsanforderungen-si) and [Symantec](http://www.symantec.com/connect/articles/securing-mysql-step-step)

* `mysql_hardening_chroot` - [chroot](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_chroot)
* `mysql_hardening_options.safe-user-create` - [safe-user-create](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_safe-user-create)
* `mysql_hardening_options.safe-user-create` - [secure-auth](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_secure-auth)
* `mysql_hardening_options.skip-symbolic-links` - [skip-symbolic-links](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_symbolic-links)
* `mysql_hardening_skip_show_database` - [skip-show-database](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_skip-show-database)
* `mysql_hardening_options.local-infile` - [local-infile](http://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_local_infile)
* `mysql_hardening_options.allow-suspicious-udfs` - [allow-suspicious-udfs](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_allow-suspicious-udfs)
* `mysql_hardening_chroot.automatic-sp-privileges` - [automatic_sp_privileges](https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_automatic_sp_privileges)
* `mysql_hardening_options.secure-file-priv` - [secure-file-priv](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_secure-file-priv)

## Security Configuration

This setup sets the following parameters by default

    # via `mysql_hardening_options.local-infile`
    local-infile = 0

    # via `mysql_hardening_options.safe-user-create`
    safe-user-create = 1

    # via `mysql_hardening_options.safe-user-create`
    secure-auth = 1

    # via `mysql_hardening_skip_show_database`
    skip-show-database

    # via `mysql_hardening_options.skip-symbolic-links`
    skip-symbolic-links

    # via `mysql_hardening_chroot.automatic-sp-privileges`
    automatic_sp_privileges = 0

    # via `mysql_hardening_options.secure-file-priv`
    secure-file-priv = /tmp


Additionally it ensures that the following parameters are not set

 * deactivate old-passwords via `mysql_hardening_options.secure-auth`
 * deactivate allow-suspicious-udfs via `mysql_hardening_options.allow-suspicious-udfs`
 * skip-grant-tables via `mysql_hardening_skip_grant_tables`
 * the permissions of `/var/lib/mysql` is limited to `mysql` user.

## Local Testing

For local testing you can use vagrant and Virtualbox of VMWare to run tests locally. You will have to install Virtualbox and Vagrant on your system. See [Vagrant Downloads](http://downloads.vagrantup.com/) for a vagrant package suitable for your system. For all our tests we use `test-kitchen`. If you are not familiar with `test-kitchen` please have a look at [their guide](http://kitchen.ci/docs/getting-started).

Next install test-kitchen:

```bash
# Install dependencies
gem install bundler
bundle install

# Fetch tests
bundle exec thor kitchen:fetch-remote-tests

# download a MySQL-installation role
ansible-galaxy install -p roles/ bennojoy.mysql

# change password in MySQL-installation role to match the one from testing
sed -i 's/foobar/iloverandompasswordsbutthiswilldo/g' roles/bennojoy.mysql/defaults/main.yml

# fast test on one machine
bundle exec kitchen test default-ubuntu-1204

# test on all machines
bundle exec kitchen test

# for development
bundle exec kitchen create default-ubuntu-1204
bundle exec kitchen converge default-ubuntu-1204
```

For more information see [test-kitchen](http://kitchen.ci/docs/getting-started)

## Contributors + Kudos

...

## License and Author

* Author:: Sebastian Gumprich <sebastian.gumprich@38.de>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[3]: https://gitter.im/hardening-io/general
