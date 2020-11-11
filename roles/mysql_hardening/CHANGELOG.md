# Changelog

## [2.2.2](https://github.com/dev-sec/ansible-mysql-hardening/tree/2.2.2) (2020-10-18)

[Full Changelog](https://github.com/dev-sec/ansible-mysql-hardening/compare/2.2.1...2.2.2)

**Implemented enhancements:**

- Use mysql_query module instead of temporary files [\#56](https://github.com/dev-sec/ansible-mysql-hardening/pull/56) ([szEvEz](https://github.com/szEvEz))
- update readme to new layout for vars [\#53](https://github.com/dev-sec/ansible-mysql-hardening/pull/53) ([rndmh3ro](https://github.com/rndmh3ro))
- add mode to copy task [\#51](https://github.com/dev-sec/ansible-mysql-hardening/pull/51) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix linting errors and simplivy vars-handling [\#49](https://github.com/dev-sec/ansible-mysql-hardening/pull/49) ([rndmh3ro](https://github.com/rndmh3ro))

**Fixed bugs:**

- permissions on /etc/mysql/mysql.cnf too restrictive [\#35](https://github.com/dev-sec/ansible-mysql-hardening/issues/35)
- fix missing variables [\#55](https://github.com/dev-sec/ansible-mysql-hardening/pull/55) ([rndmh3ro](https://github.com/rndmh3ro))
- add modes to template and file tasks [\#50](https://github.com/dev-sec/ansible-mysql-hardening/pull/50) ([rndmh3ro](https://github.com/rndmh3ro))

**Closed issues:**

- Use mysql_query module instead of temporary files [\#52](https://github.com/dev-sec/ansible-mysql-hardening/issues/52)
- Add Centos 8 support for ansible-mysql-hardening [\#36](https://github.com/dev-sec/ansible-mysql-hardening/issues/36)

**Merged pull requests:**

- Run ansible-lint via github action [\#58](https://github.com/dev-sec/ansible-mysql-hardening/pull/58) ([szEvEz](https://github.com/szEvEz))
- Fix kitchen and travisci for major distros [\#57](https://github.com/dev-sec/ansible-mysql-hardening/pull/57) ([szEvEz](https://github.com/szEvEz))
- update testing [\#48](https://github.com/dev-sec/ansible-mysql-hardening/pull/48) ([rndmh3ro](https://github.com/rndmh3ro))

## [2.2.1](https://github.com/dev-sec/ansible-mysql-hardening/tree/2.2.1) (2020-06-06)

[Full Changelog](https://github.com/dev-sec/ansible-mysql-hardening/compare/2.2.0...2.2.1)

**Implemented enhancements:**

- unify changelog and release actions [\#46](https://github.com/dev-sec/ansible-mysql-hardening/pull/46) ([rndmh3ro](https://github.com/rndmh3ro))

## [2.2.0](https://github.com/dev-sec/ansible-mysql-hardening/tree/2.2.0) (2020-05-09)

[Full Changelog](https://github.com/dev-sec/ansible-mysql-hardening/compare/2.1.0...2.2.0)

**Implemented enhancements:**

- add changelog and release workflow [\#45](https://github.com/dev-sec/ansible-mysql-hardening/pull/45) ([rndmh3ro](https://github.com/rndmh3ro))
- Use python3-mysqldb for Ubuntu 20.04 [\#44](https://github.com/dev-sec/ansible-mysql-hardening/pull/44) ([shadinaif](https://github.com/shadinaif))
- add ansible-lint [\#43](https://github.com/dev-sec/ansible-mysql-hardening/pull/43) ([rndmh3ro](https://github.com/rndmh3ro))

## [2.1.0](https://github.com/dev-sec/ansible-mysql-hardening/tree/2.1.0) (2019-10-17)

[Full Changelog](https://github.com/dev-sec/ansible-mysql-hardening/compare/2.0.0...2.1.0)

**Implemented enhancements:**

- Add support for Debian Buster in ansible-mysql-hardening [\#37](https://github.com/dev-sec/ansible-mysql-hardening/issues/37)
- Update readme to include baselines [\#28](https://github.com/dev-sec/ansible-mysql-hardening/issues/28)
- migrate to new inspec test suite [\#25](https://github.com/dev-sec/ansible-mysql-hardening/issues/25)
- use bool filter on bare variable to address Ansible 2.8 deprecation warning [\#40](https://github.com/dev-sec/ansible-mysql-hardening/pull/40) ([deefour](https://github.com/deefour))
- Add test support for Debian Buster [\#38](https://github.com/dev-sec/ansible-mysql-hardening/pull/38) ([cnkk](https://github.com/cnkk))
- remove eol'd OS and add new [\#34](https://github.com/dev-sec/ansible-mysql-hardening/pull/34) ([rndmh3ro](https://github.com/rndmh3ro))
- replace iteritems with items for python3 support [\#33](https://github.com/dev-sec/ansible-mysql-hardening/pull/33) ([rndmh3ro](https://github.com/rndmh3ro))
- make mysql daemon enabling configurable [\#30](https://github.com/dev-sec/ansible-mysql-hardening/pull/30) ([rndmh3ro](https://github.com/rndmh3ro))

**Fixed bugs:**

- Template fails to render with Python 3 [\#32](https://github.com/dev-sec/ansible-mysql-hardening/issues/32)
- my.cnf symlink turns into None? [\#24](https://github.com/dev-sec/ansible-mysql-hardening/issues/24)

## [2.0.0](https://github.com/dev-sec/ansible-mysql-hardening/tree/2.0.0) (2017-05-07)

[Full Changelog](https://github.com/dev-sec/ansible-mysql-hardening/compare/1.0.0...2.0.0)

**Implemented enhancements:**

- Add CentOS7 with MariaDB support [\#23](https://github.com/dev-sec/ansible-mysql-hardening/issues/23)
- Fix ansible.cfg settings [\#29](https://github.com/dev-sec/ansible-mysql-hardening/pull/29) ([fazlearefin](https://github.com/fazlearefin))
- Add CentOS7 with MariaDB support [\#27](https://github.com/dev-sec/ansible-mysql-hardening/pull/27) ([chrispoupart](https://github.com/chrispoupart))
- - renamed 'mysql_hardening_mysql_conf' var to 'mysql_hardening_mysql\_… [\#22](https://github.com/dev-sec/ansible-mysql-hardening/pull/22) ([agno01](https://github.com/agno01))

**Fixed bugs:**

- error on task protect my.cnf [\#20](https://github.com/dev-sec/ansible-mysql-hardening/issues/20)

**Merged pull requests:**

- use new docker files [\#26](https://github.com/dev-sec/ansible-mysql-hardening/pull/26) ([rndmh3ro](https://github.com/rndmh3ro))

## [1.0.0](https://github.com/dev-sec/ansible-mysql-hardening/tree/1.0.0) (2016-06-28)

[Full Changelog](https://github.com/dev-sec/ansible-mysql-hardening/compare/dab153eb56e2296ce340e77d95586a55b5eefb80...1.0.0)

**Implemented enhancements:**

- add follow=yes to my.cnf protect task, incase its a symlink. fixes \#20 [\#21](https://github.com/dev-sec/ansible-mysql-hardening/pull/21) ([rndmh3ro](https://github.com/rndmh3ro))
- add changelog generator [\#7](https://github.com/dev-sec/ansible-mysql-hardening/pull/7) ([chris-rock](https://github.com/chris-rock))

**Closed issues:**

- tasks - main [\#14](https://github.com/dev-sec/ansible-mysql-hardening/issues/14)
- Fix directory structure. [\#6](https://github.com/dev-sec/ansible-mysql-hardening/issues/6)

**Merged pull requests:**

- Local testing [\#17](https://github.com/dev-sec/ansible-mysql-hardening/pull/17) ([rndmh3ro](https://github.com/rndmh3ro))
- fix rhel daemon [\#16](https://github.com/dev-sec/ansible-mysql-hardening/pull/16) ([rndmh3ro](https://github.com/rndmh3ro))
- alt version initial commit [\#15](https://github.com/dev-sec/ansible-mysql-hardening/pull/15) ([fitz123](https://github.com/fitz123))
- add test support for ansible 2.0 and 1.9 [\#13](https://github.com/dev-sec/ansible-mysql-hardening/pull/13) ([rndmh3ro](https://github.com/rndmh3ro))
- add webhook for ansible galaxy [\#11](https://github.com/dev-sec/ansible-mysql-hardening/pull/11) ([rndmh3ro](https://github.com/rndmh3ro))
- update platforms in meta-file [\#10](https://github.com/dev-sec/ansible-mysql-hardening/pull/10) ([rndmh3ro](https://github.com/rndmh3ro))
- Simplify local testing with custom role [\#9](https://github.com/dev-sec/ansible-mysql-hardening/pull/9) ([rndmh3ro](https://github.com/rndmh3ro))
- New role layout [\#8](https://github.com/dev-sec/ansible-mysql-hardening/pull/8) ([rndmh3ro](https://github.com/rndmh3ro))
- fix mysql restart not happening because of missing os specific variable [\#5](https://github.com/dev-sec/ansible-mysql-hardening/pull/5) ([fheinle](https://github.com/fheinle))
- Update kitchen-ansible, remove separate debian install [\#4](https://github.com/dev-sec/ansible-mysql-hardening/pull/4) ([rndmh3ro](https://github.com/rndmh3ro))
- update common kitchen.yml platforms \(ansible\), kitchen_debian.yml platforms \(ansible\) [\#3](https://github.com/dev-sec/ansible-mysql-hardening/pull/3) ([chris-rock](https://github.com/chris-rock))
- Separate system-vars from editable vars. [\#2](https://github.com/dev-sec/ansible-mysql-hardening/pull/2) ([rndmh3ro](https://github.com/rndmh3ro))
- Add documentation for testing, change value in vars [\#1](https://github.com/dev-sec/ansible-mysql-hardening/pull/1) ([rndmh3ro](https://github.com/rndmh3ro))

\* _This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)_
