# Ansible Collection - devsec.hardening

![devsec.os_hardening](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.os_hardening/badge.svg)
![devsec.ssh_hardening](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.ssh_hardening/badge.svg)
![devsec.nginx_hardening](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.nginx_hardening/badge.svg)
![devsec.mysql_hardening](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.mysql_hardening/badge.svg)

## Description

This collection provides battle tested hardening for:

- Linux operating systems:
  - CentOS 7/8
  - Debian 9/10
  - Ubuntu 16.04/18.04/20.04
  - Amazon Linux (some roles supported)
  - Arch Linux (some roles supported)
  - Fedora (some roles supported)
  - Suse Tumbleweed (some roles supported)
- MySQL
  - MariaDB >= 5.5.65, >= 10.1.45, >= 10.3.17
  - MySQL >= 5.7.31, >= 8.0.3
- Nginx 1.0.16 or later
- OpenSSH 5.3 and later

The hardening is intended to be compliant with the Inspec DevSec Baselines:

- https://github.com/dev-sec/linux-baseline
- https://github.com/dev-sec/mysql-baseline
- https://github.com/dev-sec/nginx-baseline
- https://github.com/dev-sec/ssh-baseline

## Looking for the old ansible-os-hardening role?

This role is now part of the hardening-collection. You can find the old role in the branch `legacy`.

## Minimum required Ansible-version

- > = 2.9.10

## Included content

- [os_hardening](roles/os_hardening/)
- [mysql_hardening](roles/mysql_hardening/)
- [nginx_hardening](roles/nginx_hardening/)
- [ssh_hardening](roles/ssh_hardening/)

In progress, not working:

- [apache_hardening](roles/apache_hardening/)
- [windows_hardening](roles/windows_hardening/)

## Using this collection

Please refer to the examples in the readmes of the role.

See [Ansible Using collections](https://docs.ansible.com/ansible/latest/user_guide/collections_using.html) for more details.

## Contributing to this collection

See the [contributor guideline](CONTRIBUTING.md).

## Release notes

See the [changelog](https://github.com/dev-sec/ansible-os-hardening/tree/master/CHANGELOG.md).

## Roadmap

Todos:

- Work on [apache_hardening](roles/apache_hardening/) and [windows_hardening](roles/windows_hardening/).
- Add support for more operating systems,

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

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
