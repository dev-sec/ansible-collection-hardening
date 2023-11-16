# Ansible Collection - devsec.hardening

[![devsec.os_hardening](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/os_hardening.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/os_hardening.yml)
[![devsec.os_hardening VM](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/os_hardening_vm.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/os_hardening_vm.yml)
[![devsec.ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening.yml)
[![devsec.ssh_hardening BSD](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening_bsd.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening_bsd.yml)
[![devsec.ssh_hardening with custom tests](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening_custom_tests.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening_custom_tests.yml)
[![devsec.nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/nginx_hardening.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/nginx_hardening.yml)
[![devsec.mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/mysql_hardening.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/mysql_hardening.yml)

## Description

This collection provides battle tested hardening for:

- Linux operating systems:
  - CentOS 7/8/9
  - Rocky Linux 8/9
  - Debian 10/11/12
  - Ubuntu 18.04/20.04/22.04
  - Amazon Linux (some roles supported)
  - Arch Linux (some roles supported)
  - Fedora 37/38 (some roles supported)
  - Suse Tumbleweed (some roles supported)
- MySQL
  - MariaDB >= 5.5.65, >= 10.1.45, >= 10.3.17
  - MySQL >= 5.7.31, >= 8.0.3
- Nginx 1.0.16 or later
- OpenSSH 5.3 and later

The hardening is intended to be compliant with the Inspec DevSec Baselines:

- <https://github.com/dev-sec/linux-baseline>
- <https://github.com/dev-sec/mysql-baseline>
- <https://github.com/dev-sec/nginx-baseline>
- <https://github.com/dev-sec/ssh-baseline>

## Looking for the old roles?

The roles are now part of the hardening-collection.
We have kept the old releases of the `os-hardening` role in this repository, so you can find the them by exploring older tags.
The last release of the standalone role was [6.2.0](https://github.com/dev-sec/ansible-collection-hardening/tree/6.2.0).

The other roles are in separate archives repositories:

- [apache_hardening](https://github.com/dev-sec/ansible-apache-hardening)
- [mysql_hardening](https://github.com/dev-sec/ansible-mysql-hardening)
- [nginx_hardening](https://github.com/dev-sec/ansible-nginx-hardening)
- [ssh_hardening](https://github.com/dev-sec/ansible-ssh-hardening)
- [windows_hardening](https://github.com/dev-sec/ansible-windows-hardening)

## Minimum required Ansible-version

- Ansible >= 2.9.10

## Included content

- [os_hardening](roles/os_hardening/)
- [mysql_hardening](roles/mysql_hardening/)
- [nginx_hardening](roles/nginx_hardening/)
- [ssh_hardening](roles/ssh_hardening/)

In progress, not working:

- [apache_hardening](roles/apache_hardening/)
- [windows_hardening](roles/windows_hardening/)

## Installation

Install the collection via ansible-galaxy:

`ansible-galaxy collection install devsec.hardening`

## Using this collection

Please refer to the examples in the readmes of the role.

See [Ansible Using collections](https://docs.ansible.com/ansible/latest/user_guide/collections_using.html) for more details.

## Contributing to this collection

See the [contributor guideline](CONTRIBUTING.md).

## Release notes

See the [changelog](https://github.com/dev-sec/ansible-os-hardening/tree/master/CHANGELOG.md).

## Roadmap

Todos:

- Work on [apache_hardening](roles/apache_hardening/) and [windows_hardening](roles/windows_hardening/)
- Add support for more operating systems

## More information

General information:

- [Ansible Collection overview](https://github.com/ansible-collections/overview)
- [Ansible User guide](https://docs.ansible.com/ansible/latest/user_guide/index.html)
- [Ansible Developer guide](https://docs.ansible.com/ansible/latest/dev_guide/index.html)
- [Ansible Collections Checklist](https://github.com/ansible-collections/overview/blob/master/collection_requirements.rst)
- [Ansible Community code of conduct](https://docs.ansible.com/ansible/latest/community/code_of_conduct.html)
- [The Bullhorn (the Ansible Contributor newsletter)](https://us19.campaign-archive.com/home/?u=56d874e027110e35dea0e03c1&id=d6635f5420)
- [Changes impacting Contributors](https://github.com/ansible-collections/overview/issues/45)

## Licensing

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
