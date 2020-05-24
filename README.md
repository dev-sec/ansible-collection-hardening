# windows-hardening (Ansible Role)

## Description

**This role is in a very early stage and may not work correctly or secure your servers the way you expect it! Please do not rely on it securing you Windows servers (yet).**

These roles ensure that a Windows 2012 R2 or Windows 2016 system is compliant with the [DevSec Windows Baseline](https://github.com/dev-sec/windows-baseline).

## Requirements

* Ansible 2.3.0

## Variables

| Name                                           | Default Value   | Description                         |
| ---------------------------------------------- | --------------- | ----------------------------------- |
| `win_security_PasswordComplexity`              | `1`             | Flag that indicates whether the operating system MUST require that passwords meet complexity requirements. Default: True |
| `win_security_LockoutBadCount`                 | `4`             | Number of failed logon attempts after which a user account MUST be locked out. Default: 4 |
| `win_security_ResetLockoutCount`               | `15`            | Number of minutes after a failed logon attempt that the account MUST be locked out. Default: 15 minutes|
| `win_security_LockoutDuration`                 | `15`            | The number of minutes that a locked-out account MUST remain locked out before automatically becoming unlocked. Default: 15 minutes |
| `win_security_SeRemoteInteractiveLogonRight`   | `*S-1-5-32-544` | Determines which users or groups can access the logon screen of a remote computer through a RDP connection. Default: Administrators |
| `win_security_SeTcbPrivilege`                  | `*S-1-0-0`      | Allows a process to authenticate like a user and thus gain access to the same resources as a user. Default: Nobody |
| `win_security_SeMachineAccountPrivilege`       | `*S-1-5-32-544` | Allows the user to add a computer to a specific domain. Default: Administrators |
| `win_security_SeTrustedCredManAccessPrivilege` | ``              | Access Credential Manager as a trusted caller policy setting is used by Credential Manager during backup and restore. Default: No One |
| `win_security_SeNetworkLogonRight`             | `*S-1-0-0`      | Required for an account to log on using the network logon type. Default: Nobody |

## Example Playbook

```
    - hosts: localhost
      roles:
        - dev-sec.windows-hardening
```

## Local Testing

For all our tests we use `test-kitchen`. If you are not familiar with `test-kitchen` please have a look at [their guide](http://kitchen.ci/docs/getting-started).

We create multiple hosts - one linux host where Ansible runs on and the Windows hosts.

Next install test-kitchen:

```bash
# Install dependencies
gem install bundler
bundle install
```

Then you can run the playbook and tests:
```
# create the ansible and windows hosts
bundle exec kitchen create

# run ansible playbook on windows host
bundle exec kitchen converge default-ansibleserver

# verify windows machines
bundle exec kitchen verify windows

```

## Contributing

See [contributor guideline](CONTRIBUTING.md).

## License and Author

* Author:: Sebastian Gumprich

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


[1]: http://travis-ci.org/dev-sec/ansible-os-hardening
[2]: https://gitter.im/dev-sec/general
[3]: https://galaxy.ansible.com/dev-sec/os-hardening

