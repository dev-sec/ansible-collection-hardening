# mysql-hardening (Ansible role)

[![Build Status](http://img.shields.io/travis/dev-sec/ansible-mysql-hardening.svg)][1]
[![Gitter Chat](https://badges.gitter.im/Join%20Chat.svg)][2]
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-mysql--hardening-660198.svg)][3]

## Description

Provides security configurations for MySQL. It is intended to set up production-ready mysql instances that are configured with minimal surface for attackers.

This role focuses on security configuration of MySQL. Therefore you can add this hardening role alongside your existing MySQL configuration in Ansible.

## Requirements

* Ansible
* Set up `mysql_root_password` variable

### Example Playbook

    - hosts: localhost
      roles:
        - dev-sec.mysql-hardening

This hardening role installs the hardening but expects an existing installation of MySQL, MariaDB or Percona. Please ensure that the following variables are set accordingly:

- `mysql_hardening_enabled: yes` role is enabled by default and can be disabled without removing it from a playbook. You can use conditional variable, for example: `mysql_hardening_enabled: "{{ true if mysql_enabled else false }}"`
- `mysql_hardening_user: 'mysql'` The user that mysql runs as.
- `mysql_datadir: '/var/lib/mysql'` The MySQL data directory
- `mysql_hardening_hardening_conf: '/etc/mysql/conf.d/hardening.cnf'` The path to the configuration file where the hardening will be performed

## Security Options

Further information is already available at [Deutsche Telekom (German)](http://www.telekom.com/static/-/155996/7/technische-sicherheitsanforderungen-si) and [Symantec](http://www.symantec.com/connect/articles/securing-mysql-step-step)

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| `mysql_hardening_chroot` | "" | [chroot](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_chroot)|
| `mysql_hardening_options.safe-user-create` | 1 | [safe-user-create](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_safe-user-create)|
| `mysql_hardening_options.secure-auth` | 1 | [secure-auth](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_secure-auth)|
| `mysql_hardening_options.skip-symbolic-links` | 1 | [skip-symbolic-links](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_symbolic-links)|
| `mysql_hardening_skip_grant_tables:` | false | [skip-grant-tables](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_skip-grant-tables)|
| `mysql_hardening_skip_show_database` | 1 | [skip-show-database](http://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_skip-show-database)|
| `mysql_hardening_options.local-infile` | 0 | [local-infile](http://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_local_infile)|
| `mysql_hardening_options.allow-suspicious-udfs` | 0 | [allow-suspicious-udfs](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_allow-suspicious-udfs)|
| `mysql_hardening_chroot.automatic-sp-privileges` | 0 | [automatic_sp_privileges](https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_automatic_sp_privileges)|
| `mysql_hardening_options.secure-file-priv` | /tmp | [secure-file-priv](https://dev.mysql.com/doc/refman/5.7/en/server-options.html#option_mysqld_secure-file-priv)|
| `mysql_allow_remote_root` | false | delete remote root users |
| `mysql_remove_anonymous_users` | true | remove users without authentication |
| `mysql_remove_test_database` | true | remove test database |

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


## License and Author

* Author:: Sebastian Gumprich <sebastian.gumprich@38.de>
* Author:: Anton Lugovoi <anton.lugovoi@outlook.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[1]: http://travis-ci.org/dev-sec/ansible-ssh-hardening
[2]: https://gitter.im/dev-sec/general
[3]: https://galaxy.ansible.com/dev-sec/mysql-hardening/
