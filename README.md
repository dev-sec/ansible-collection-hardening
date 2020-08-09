# ssh-hardening (Ansible Role)

[![Build Status](http://img.shields.io/travis/dev-sec/ansible-ssh-hardening.svg)][1]
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-ssh--hardening-660198.svg)][3]

## Description

This role provides secure ssh-client and ssh-server configurations.  It is intended to be compliant with the [DevSec SSH Baseline](https://github.com/dev-sec/ssh-baseline).

Warning: This role disables root-login on the target server! Please make sure you have another user with su or sudo permissions that can login into the server.

## Requirements

* Ansible > 2.5

## Role Variables
| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
|`network_ipv6_enable` | false |true if IPv6 is needed. `ssh_listen_to` must also be set to listen to IPv6 addresses (for example `[::]`).|
|`ssh_server_ports` | ['22'] |ports on which ssh-server should listen|
|`ssh_client_port` | '22' |port to which ssh-client should connect|
|`ssh_listen_to` | ['0.0.0.0'] |one or more ip addresses, to which ssh-server should listen to. Default is all IPv4 adresses, but should be configured to specific addresses for security reasons!|
|`ssh_host_key_files` | [] |Host keys for sshd. If empty ['/etc/ssh/ssh_host_rsa_key', '/etc/ssh/ssh_host_ecdsa_key', '/etc/ssh/ssh_host_ed25519_key'] will be used, as far as supported by the installed sshd version|
|`ssh_host_key_algorithms` | [] | Host key algorithms that the server offers. If empty the [default list](https://man.openbsd.org/sshd_config#HostKeyAlgorithms) will be used, otherwise overrides the setting with specified list of algorithms|
|`ssh_client_alive_interval` | 600 | specifies an interval for sending keepalive messages |
|`ssh_client_alive_count` | 3 | defines how often keep-alive messages are sent |
|`ssh_permit_tunnel` | false | true if SSH Port Tunneling is required |
|`ssh_remote_hosts` | [] | one or more hosts and their custom options for the ssh-client. Default is empty. See examples in `defaults/main.yml`.|
|`ssh_permit_root_login` | no | Disable root-login. Set to `without-password` or `yes` to enable root-login |
|`ssh_allow_tcp_forwarding` | no | `'no'` to disable TCP Forwarding. Set to `'yes'` to allow TCP Forwarding. If you are using OpenSSH >= 6.2 version, you can specify `'yes'`, `'no'`, `'all'` or `'local'`. <br> *Note*: values passed to this variable must be strings, thus values `'yes'` and `'no'` should be passed with quotes. |
|`ssh_gateway_ports` | `false` | `false` to disable binding forwarded ports to non-loopback addresses. Set to `true` to force binding on wildcard address. Set to `clientspecified` to allow the client to specify which address to bind to.|
|`ssh_allow_agent_forwarding` | false | false to disable Agent Forwarding. Set to true to allow Agent Forwarding.|
|`ssh_x11_forwarding` | false | false to disable X11 Forwarding. Set to true to allow X11 Forwarding.|
|`ssh_pam_support` | true | true if SSH has PAM support.|
|`ssh_use_pam` | true | false to disable pam authentication.|
|`ssh_gssapi_support` | false | true if SSH has GSSAPI support.|
|`ssh_kerberos_support` | true | true if SSH has Kerberos support.|
|`ssh_deny_users` | '' | if specified, login is disallowed for user names that match one of the patterns.|
|`ssh_allow_users` | '' | if specified, login is allowed only for user names that match one of the patterns.|
|`ssh_deny_groups` | '' | if specified, login is disallowed for users whose primary group or supplementary group list matches one of the patterns.|
|`ssh_allow_groups` | '' | if specified, login is allowed only for users whose primary group or supplementary group list matches one of the patterns.|
|`ssh_authorized_keys_file` | '' | change default file that contains the public keys that can be used for user authentication.|
|`ssh_trusted_user_ca_keys_file` | '' | specifies the file containing trusted certificate authorities public keys used to sign user certificates. |
|`ssh_trusted_user_ca_keys` | [] | set the trusted certificate authorities public keys used to sign user certificates. Only used if ssh_trusted_user_ca_keys_file is set. |
|`ssh_authorized_principals_file` | '' | specifies the file containing principals that are allowed. Only used if ssh_trusted_user_ca_keys_file is set. |
|`ssh_authorized_principals` | [] | list of hashes containing file paths and authorized principals, see default_custom.yml for all options. Only used if ssh_authorized_principals_file is set. |
|`ssh_print_motd` | false | false to disable printing of the MOTD|
|`ssh_print_pam_motd` | false | false to disable printing of the MOTD via pam (Debian and Ubuntu)|
|`ssh_print_last_log` | false | false to disable display of last login information|
|`sftp_enabled` | false | true to enable sftp configuration|
|`sftp_umask` | '0027' | Specifies the umask for sftp|
|`sftp_chroot` | true | false to disable chroot for sftp|
|`sftp_chroot_dir` | /home/%u | change default sftp chroot location|
|`ssh_client_roaming` | false | enable experimental client roaming|
|`sshd_moduli_file` | '/etc/ssh/moduli' | path to the SSH moduli file |
|`sshd_moduli_minimum` | 2048 | remove Diffie-Hellman parameters smaller than the defined size to mitigate logjam|
|`ssh_challengeresponseauthentication` | false | Specifies whether challenge-response authentication is allowed (e.g. via PAM) |
|`ssh_client_password_login` | false | `true` to allow password-based authentication with the ssh client |
|`ssh_server_password_login` | false | `true` to allow password-based authentication with the ssh server |
|`ssh_banner` | `false` | `true` to print a banner on login |
|`ssh_banner_path`| '/etc/sshd/banner.txt' | path to the SSH banner file |
|`ssh_client_hardening` | `true` | `false` to stop harden the client |
|`ssh_client_port` | `'22'` | Specifies the port number to connect on the remote host. |
|`ssh_client_compression` | `false` | Specifies whether the client requests compression. |
|`ssh_compression` | `false` | Specifies whether server-side compression is enabled after the user has authenticated successfully. |
|`ssh_login_grace_time` | `30s` | specifies the time allowed for successful authentication to the SSH server |
|`ssh_max_auth_retries` | `2` | Specifies the maximum number of authentication attempts permitted per connection. |
|`ssh_max_sessions` | `10` | Specifies the maximum number of open sessions permitted from a given connection. |
|`ssh_print_debian_banner` | `false` | `true` to print debian specific banner |
|`ssh_server_enabled` | `true` | `false` to disable the opensshd server |
|`ssh_server_hardening` | `true` | `false` to stop harden the server |
|`ssh_server_match_address` | '' | Introduces a conditional block.  If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file. |
|`ssh_server_match_group` | '' | Introduces a conditional block.  If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file. |
|`ssh_server_match_user` | '' | Introduces a conditional block.  If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file. |
|`ssh_server_match_local_port` | '' | Introduces a conditional block.  If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file. |
|`ssh_server_permit_environment_vars` | `no` | `yes` to specify that ~/.ssh/environment and environment= options in ~/.ssh/authorized_keys are processed by sshd. With openssh version 7.8 it is possible to specify a whitelist of environment variable names in addition to global "yes" or "no" settings |
|`ssh_server_accept_env_vars`| '' | Specifies what environment variables sent by the client will be copied into the session's enviroment, multiple environment variables may be separated by whitespace |
|`ssh_use_dns` | `false` | Specifies whether sshd should look up the remote host name, and to check that the resolved host name for the remote IP address maps back to the very same IP address. |
|`ssh_server_revoked_keys` | [] | a list of revoked public keys that the ssh server will always reject, useful to revoke known weak or compromised keys.|
|`ssh_max_startups` | '10:30:100' | Specifies the maximum number of concurrent unauthenticated connections to the SSH daemon.|
|`ssh_macs` | [] | Change this list to overwrite macs. Defaults found in `defaults/main.yml` |
|`ssh_kex` | [] | Change this list to overwrite kexs. Defaults found in `defaults/main.yml` |
|`ssh_ciphers` | [] | Change this list to overwrite ciphers. Defaults found in `defaults/main.yml` |
|`ssh_custom_options` | [] | Custom lines for SSH client configuration |
|`sshd_custom_options` | [] | Custom lines for SSH daemon configuration |
|`sshd_syslog_facility` | 'AUTH' | The facility code that is used when logging messages from sshd |
|`sshd_log_level` | 'VERBOSE' | the verbosity level that is used when logging messages from sshd |
|`sshd_strict_modes` | 'yes' | Check file modes and ownership of the user's files and home directory before accepting login |
|`sshd_authenticationmethods` | `publickey` | Specifies the authentication methods that must be successfully completed for a user to be granted access. Make sure to set all required variables for your selected authentication method. Defaults found in `defaults/main.yml`

## Configuring settings not listed in role-variables

If you want to configure ssh options that are not listed above, you can use `ssh_custom_options` (for `/etc/ssh/ssh_config`) or `sshd_custom_options` (for `/etc/ssh/sshd_config`) to set them. These options will be set on the **beginning** of the file so you can override options further down in the file.

Example playbook:

```
- hosts: localhost
  roles:
    - dev-sec.ssh-hardening
  vars:
    ssh_custom_options:
      - "Include /etc/ssh/ssh_config.d/*"
    sshd_custom_options:
      - "AcceptEnv LANG"
```

## Changing the default port and idempotency

This role uses the default port 22 or the port configured in the inventory to connect to the server. If the default `ssh` port is changed via `ssh_server_ports`, once the ssh server is restarted, it will still try to connect using the previous port. In order to run this role again on the same server the inventory will have to be updated to use the new ssh port.

If idempotency is important, please consider using role [`ssh-hardening-fallback`](https://github.com/nununo/ansible-ssh-hardening-fallback), which is a wrapper around this role that falls back to port 22 if the configured port is unreachable.

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
bundle exec kitchen test ssh-ubuntu1804-ansible-latest

# test on all machines
bundle exec kitchen test

# for development
bundle exec kitchen create ssh-ubuntu1804-ansible-latest
bundle exec kitchen converge ssh-ubuntu1804-ansible-latest
bundle exec kitchen verify ssh-ubuntu1804-ansible-latest

# cleanup
bundle exec kitchen destroy ssh-ubuntu1804-ansible-latest
```

### Testing with Virtualbox
```
# fast test on one machine
KITCHEN_YAML=".kitchen.vagrant.yml" bundle exec kitchen test ssh-ubuntu-1804

# test on all machines
KITCHEN_YAML=".kitchen.vagrant.yml" bundle exec kitchen test

# for development
KITCHEN_YAML=".kitchen.vagrant.yml" bundle exec kitchen create ssh-ubuntu-1804
KITCHEN_YAML=".kitchen.vagrant.yml" bundle exec kitchen converge ssh-ubuntu-1804
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

**After using the role Ansibles template/copy/file module does not work anymore!**

This role by default deactivates SFTP. Ansible uses by default SFTP to transfer files to the remote hosts. You have to set `scp_if_ssh = True` in your ansible.cfg. This way Ansible uses SCP to copy files. Alternatively you can enable SFTP again by setting `sftp_enabled` to `true`.

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

* Author:: Sebastian Gumprich
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
