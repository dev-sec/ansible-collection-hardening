# ssh-hardening (Ansible Role)

[![Build Status](http://img.shields.io/travis/dev-sec/ansible-ssh-hardening.svg)][1]
[![Gitter Chat](https://badges.gitter.im/Join%20Chat.svg)][2]
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-ssh--hardening-660198.svg)][3]

## Description

This role provides secure ssh-client and ssh-server configurations.  It is intended to be compliant with the [DevSec SSH  Baseline](https://github.com/dev-sec/ssh-baseline).

Warning: This role disables root-login on the target server! Please make sure you have another user with su or sudo permissions that can login into the server.

## Requirements

* Ansible > 2.2.1

## Role Variables
| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
|`network_ipv6_enable` | false |true if IPv6 is needed|
|`ssh_client_cbc_required` | false |true if CBC for ciphers is required. This is usually only necessary, if older M2M mechanism need to communicate with SSH, that don't have any of the configured secure ciphers enabled. CBC is a weak alternative. Anything weaker should be avoided and is thus not available.|
|`ssh_server_cbc_required` | false |true if CBC for ciphers is required. This is usually only necessary, if older M2M mechanism need to communicate with SSH, that don't have any of the configured secure ciphers enabled. CBC is a weak alternative. Anything weaker should be avoided and is thus not available.|
|`ssh_client_weak_hmac` | false |true if weaker HMAC mechanisms are required. This is usually only necessary, if older M2M mechanism need to communicate with SSH, that don't have any of the configured secure HMACs enabled.|
|`ssh_server_weak_hmac` | false |true if weaker HMAC mechanisms are required. This is usually only necessary, if older M2M mechanism need to communicate with SSH, that don't have any of the configured secure HMACs enabled.|
|`ssh_client_weak_kex` | false |true if weaker Key-Exchange (KEX) mechanisms are required. This is usually only necessary, if older M2M mechanism need to communicate with SSH, that don't have any of the configured secure KEXs enabled.|
|`ssh_server_weak_kex` | false |true if weaker Key-Exchange (KEX) mechanisms are required. This is usually only necessary, if older M2M mechanism need to communicate with SSH, that don't have any of the configured secure KEXs enabled.|
|`ssh_server_ports` | ['22'] |ports on which ssh-server should listen|
|`ssh_client_port` | '22' |port to which ssh-client should connect|
|`ssh_listen_to` | ['0.0.0.0'] |one or more ip addresses, to which ssh-server should listen to. Default is all adresseses, but should be configured to specific addresses for security reasons!|
|`ssh_host_key_files` | [] |Host keys for sshd. If empty ['/etc/ssh/ssh_host_rsa_key', '/etc/ssh/ssh_host_ecdsa_key', '/etc/ssh/ssh_host_ed25519_key'] will be used, as far as supported by the installed sshd version|
|`ssh_client_alive_interval` | 600 | specifies an interval for sending keepalive messages |
|`ssh_client_alive_count` | 3 | defines how often keep-alive messages are sent |
|`ssh_permit_tunnel` | false | true if SSH Port Tunneling is required |
|`ssh_remote_hosts` | [] | one or more hosts and their custom options for the ssh-client. Default is empty. See examples in `defaults/main.yml`.|
|`ssh_allow_root_with_key` | false | false to disable root login altogether. Set to true to allow root to login via key-based mechanism.|
|`ssh_allow_tcp_forwarding` | false | false to disable TCP Forwarding. Set to true to allow TCP Forwarding.|
|`ssh_gateway_ports` | `false` | `false` to disable binding forwarded ports to non-loopback addresses. Set to `true` to force binding on wildcard address. Set to `clientspecified` to allow the client to specify which address to bind to.|
|`ssh_allow_agent_forwarding` | false | false to disable Agent Forwarding. Set to true to allow Agent Forwarding.|
|`ssh_use_pam` | false | false to disable pam authentication.|
|`ssh_deny_users` | '' | if specified, login is disallowed for user names that match one of the patterns.|
|`ssh_allow_users` | '' | if specified, login is allowed only for user names that match one of the patterns.|
|`ssh_deny_groups` | '' | if specified, login is disallowed for users whose primary group or supplementary group list matches one of the patterns.|
|`ssh_allow_groups` | '' | if specified, login is allowed only for users whose primary group or supplementary group list matches one of the patterns.|
|`ssh_authorized_keys_file` | '' | change default file that contains the public keys that can be used for user authentication.|
|`ssh_print_motd` | false | false to disable printing of the MOTD|
|`ssh_print_last_log` | false | false to disable display of last login information|
|`sftp_enabled` | false | true to enable sftp configuration|
|`sftp_chroot_dir` | /home/%u | change default sftp chroot location|
|`ssh_client_roaming` | false | enable experimental client roaming|
|`sshd_moduli_minimum` | 2048 | remove Diffie-Hellman parameters smaller than the defined size to mitigate logjam|
|`ssh_challengeresponseauthentication` | false | Specifies whether challenge-response authentication is allowed (e.g. via PAM) |
|`ssh_client_password_login` | false | `true` to allow password-based authentication with the ssh client |
|`ssh_server_password_login` | false | `true` to allow password-based authentication with the ssh server |
|`ssh_google_auth` | false | `true` to enable google authenticator based TOTP 2FA |
|`ssh_banner` | `false` | `true` to print a banner on login |
|`ssh_client_hardening` | `true` | `false` to stop harden the client |
|`ssh_client_port` | `'22'` | Specifies the port number to connect on the remote host. |
|`ssh_compression` | `false` | Specifies whether compression is enabled after the user has authenticated successfully. |
|`ssh_max_auth_retries` | `2` | Specifies the maximum number of authentication attempts permitted per connection. |
|`ssh_print_debian_banner` | `false` | `true` to print debian specific banner |
|`ssh_server_enabled` | `true` | `false` to disable the opensshd server |
|`ssh_server_hardening` | `true` | `false` to stop harden the server |
|`ssh_server_match_group` | '' | Introduces a conditional block.  If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file. |
|`ssh_server_match_user` | '' | Introduces a conditional block.  If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file. |
|`ssh_server_permit_environment_vars` | `false` | `true` to specify that ~/.ssh/environment and environment= options in ~/.ssh/authorized_keys are processed by sshd |
|`ssh_use_dns` | `false` | Specifies whether sshd should look up the remote host name, and to check that the resolved host name for the remote IP address maps back to the very same IP address. |
|`ssh_server_revoked_keys` | [] | a list of revoked public keys that the ssh server will always reject, useful to revoke known weak or compromised keys.|

## Example Playbook

    - hosts: localhost
      roles:
        - dev-sec.ssh-hardening

## Local Testing

The preferred way of locally testing the role is to use Docker. You will have to install Docker on your system. See [Get started](https://docs.docker.com/) for a Docker package suitable to for your system.

You can also use vagrant and Virtualbox or VMWare to run tests locally. You will have to install Virtualbox and Vagrant on your system. See [Vagrant Downloads](http://downloads.vagrantup.com/) for a vagrant package suitable for your system. For all our tests we use `test-kitchen`. If you are not familiar with `test-kitchen` please have a look at [their guide](http://kitchen.ci/docs/getting-started).

Next install test-kitchen:

```bash
# Install dependencies
gem install bundler
bundle install
```

### Testing with Docker
```
# fast test on one machine
bundle exec kitchen test default-ubuntu-1204

# test on all machines
bundle exec kitchen test

# for development
bundle exec kitchen create default-ubuntu-1204
bundle exec kitchen converge default-ubuntu-1204
```

### Testing with Virtualbox
```
# fast test on one machine
KITCHEN_YAML=".kitchen.vagrant.yml" bundle exec kitchen test default-ubuntu-1204

# test on all machines
KITCHEN_YAML=".kitchen.vagrant.yml" bundle exec kitchen test

# for development
KITCHEN_YAML=".kitchen.vagrant.yml" bundle exec kitchen create default-ubuntu-1204
KITCHEN_YAML=".kitchen.vagrant.yml" bundle exec kitchen converge default-ubuntu-1204
```
For more information see [test-kitchen](http://kitchen.ci/docs/getting-started)

## FAQ / Pitfalls

**I can't log into my account. I have registered the client key, but it still doesn't let me it.**

If you have exhausted all typical issues (firewall, network, key missing, wrong key, account disabled etc.), it may be that your account is locked. The quickest way to find out is to look at the password hash for your user:

    sudo grep myuser /etc/shadow

If the hash includes an `!`, your account is locked:

    myuser:!:16280:7:60:7:::

The proper way to solve this is to unlock the account (`passwd -u myuser`). If the user doesn't have a password, you should can unlock it via:

    usermod -p "*" myuser

Alternatively, if you intend to use PAM, you enabled it via `ssh_use_pam: true`. PAM will allow locked users to get in with keys.


**Why doesn't my application connect via SSH anymore?**

Always look into log files first and if possible look at the negotation between client and server that is completed when connecting.

We have seen some issues in applications (based on python and ruby) that are due to their use of an outdated crypto set. This collides with this hardening module, which reduced the list of ciphers, message authentication codes (MACs) and key exchange (KEX) algorithms to a more secure selection.

If you find this isn't enough, feel free to activate the attributes `cbc_requires` for ciphers, `weak_hmac` for MACs and `weak_kex`for KEX in the variables `ssh_client` or `ssh_server` based on where you want to support them.

**After using the role Ansibles template/copy/file module does not work anymore!**

This role deactivates SFTP. Ansible uses by default SFTP to transfer files to the remote hosts. You have to set `scp_if_ssh = True` in your ansible.cfg. This way Ansible uses SCP to copy files.

**Cannot restart sshd-service due to lack of privileges**

If you get the following error when running handler "restart sshd"
```
Unable to restart service ssh: Failed to restart ssh.service: Access denied
```
or
```
failure 1 running systemctl show for 'ssh': Failed to connect to bus: No such file or directory
```
either run the playbook as `root` (without `become: yes` at the playbook level), or add `become: yes` to the handler.

This is a bug with Ansible: see [here](https://github.com/dev-sec/ansible-ssh-hardening/pull/81) and [here](https://github.com/ansible/ansible/issues/17490) for more information.

## Contributing

See [contributor guideline](CONTRIBUTING.md).

## License and Author

* Author:: Sebastian Gumprich <sebastian.gumprich@38.de>
* Author:: Christoph Hartmann <chris@lollyrock.com>

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
[3]: https://galaxy.ansible.com/dev-sec/ssh-hardening/
