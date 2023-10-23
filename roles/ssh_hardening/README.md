# dev-sec.ssh_hardening

![devsec.ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/workflows/devsec.ssh_hardening/badge.svg)

## Description

This role provides secure ssh-client and ssh-server configurations. It is intended to be compliant with the [DevSec SSH Baseline](https://github.com/dev-sec/ssh-baseline).

Warning: This role disables root-login on the target server! Please make sure you have another user with su or sudo permissions that can login into the server.

<!-- BEGIN_ANSIBLE_DOCS -->

## Supported Operating Systems

- EL
  - 7, 8, 9
- Ubuntu
  - bionic, focal, jammy
- Debian
  - buster, bullseye
- Amazon
- Fedora
- ArchLinux
- SmartOS
- FreeBSD
  - 12.2
- OpenBSD
  - 7.0

## Role Variables

| Variable | Default | Description | Type | Required |
| -------- | ------- | ----------- | ---- | -------- |
| `network_ipv6_enable` | true | `false` if IPv6 is not needed. `ssh_listen_to` must also be set to listen to IPv6 addresses (for example `[::]`). | bool | n |
| `sftp_chroot` | true | Set to `false` to disable chroot for sftp. | bool | n |
| `sftp_chroot_dir` | /home/%u | change default stp chroot location | str | n |
| `sftp_enabled` | true | Set to `false` to disable sftp configuration. | bool | n |
| `sftp_umask` | 0027 | Specifies the umask for sftp. | str | n |
| `ssh_allow_agent_forwarding` | false | Set to `false` to disable Agent Forwarding. Set to `true` to allow Agent Forwarding. | bool | n |
| `ssh_allow_tcp_forwarding` | no | Set to `'no'` or `false` to disable TCP Forwarding. Set to `'yes'` or`True` to allow TCP Forwarding. If you are using OpenSSH >= 6.2 version, you can specify `'yes'`, `'no'`, `'all'`, `'local'`or`'remote'`. | str | n |
| `ssh_banner` | false | Set to `true` to print a banner on login. | bool | n |
| `ssh_banner_path` | /etc/sshd/banner.txt | path to the SSH banner file. | str | n |
| `ssh_challengeresponseauthentication` | false | Specifies whether challenge-response authentication is allowed (e.g. via PAM). | bool | n |
| `ssh_client_alive_count` | 3 | Defines the number of acceptable unanswered client alive messages before disconnecting clients. | int | n |
| `ssh_client_alive_interval` | 300 | specifies an interval for sending keepalive messages. | int | n |
| `ssh_client_compression` | false | Specifies whether the client requests compression. | bool | n |
| `ssh_client_config_file` | /etc/ssh/ssh_config | path of the ssh client configuration file, e.g. `/etc/ssh/ssh_config.d/custom.conf`. | str | n |
| `ssh_client_hardening` | true | `false` to stop harden the client. | bool | n |
| `ssh_client_password_login` | false | Set to `true` to allow password-based authentication with the ssh client. | bool | n |
| `ssh_client_port` | 22 | Specifies the port number to connect on the remote host. | str | n |
| `ssh_client_roaming` | false | enable experimental client roaming. | bool | n |
| `ssh_compression` | false | Specifies whether server-side compression is enabled after the user has authenticated successfully. | bool | n |
| `ssh_custom_selinux_dir` | /etc/selinux/local-policies | directory where to store the ssh_password policy | str | n |
| `ssh_gateway_ports` | false | Set to `false` to disable binding forwarded ports to non-loopback addresses. Set to `true` to force binding on wildcard address. Set to `clientspecified` to allow the client to specify which address to bind to. | bool | n |
| `ssh_gssapi_delegation` | false | Set to `true` to enable GSSAPI credential forwarding. | bool | n |
| `ssh_gssapi_support` | false | Set to `true` to enable GSSAPI authentication (both client and server). | bool | n |
| `ssh_hardening_enabled` | true | Whether to run the hardening | bool | n |
| `ssh_host_rsa_key_size` | 4096 | Specifies the number of bits in the private host RSA key to create. | int | n |
| `ssh_kerberos_support` | true | Set to `true` if SSH has Kerberos support. | bool | n |
| `ssh_listen_to` | ["0.0.0.0"] | one or more ip addresses, to which ssh-server should listen to. Default is all IPv4 addresses, but should be configured to specific addresses for security reasons | list | n |
| `ssh_login_grace_time` | 30s | specifies the time allowed for successful authentication to the SSH server. | str | n |
| `ssh_max_auth_retries` | 2 | Specifies the maximum number of authentication attempts permitted per connection. | int | n |
| `ssh_max_sessions` | 10 | Specifies the maximum number of open sessions permitted from a given connection. | int | n |
| `ssh_max_startups` | 10:30:60 | Specifies the maximum number of concurrent unauthenticated connections to the SSH daemon. | str | n |
| `ssh_pam_support` | true | Set to `true` if SSH has PAM support. | bool | n |
| `ssh_permit_root_login` | no | Disable root-login. Set to `'without-password'` or `'yes'` to enable root-login - The quotes are required! | str | n |
| `ssh_permit_tunnel` | false | `true` if SSH Port Tunneling is required. | bool | n |
| `ssh_print_debian_banner` | false | Set to `true` to print debian specific banner. | bool | n |
| `ssh_print_last_log` | false | Set to `false` to disable display of last login information. | bool | n |
| `ssh_print_motd` | false | Set to `false` to disable printing of the MOTD. | bool | n |
| `ssh_print_pam_motd` | false | Set to `false` to disable printing of the MOTD via pam (Debian and Ubuntu). | bool | n |
| `ssh_ps59` | sandbox | Specifies whether sshd separates privileges by creating an unprivileged child process to deal with incoming network traffic. | str | n |
| `ssh_server_config_file` | /etc/ssh/sshd_config | path of the ssh server configuration file, e.g. `/etc/ssh/sshd_config.d/custom.conf`. | str | n |
| `ssh_server_enabled` | true | Set to `false` to disable the opensshd server. | bool | n |
| `ssh_server_hardening` | true | `false` to stop harden the server. | bool | n |
| `ssh_server_password_login` | false | Set to `true` to allow password-based authentication to the ssh server. You probably also need to change `sshd_authenticationmethods` to include `password` if you set `ssh_server_password_login`: `true`. | bool | n |
| `ssh_server_permit_environment_vars` | no | `yes` to specify that ~/.ssh/environment and environment= options in ~/.ssh/authorized_keys are processed by sshd. With openssh version 7.8 it is possible to specify a whitelist of environment variable names in addition to global 'yes' or 'no' settings. | str | n |
| `ssh_server_ports` | ["22"] | ports on which ssh-server should listen. | list | n |
| `ssh_use_dns` | false | Specifies whether sshd should look up the remote host name, and to check that the resolved host name for the remote IP address maps back to the very same IP address. | bool | n |
| `ssh_use_pam` | true | Set to `false` to disable pam authentication. | bool | n |
| `ssh_x11_forwarding` | false | Set to `false` to disable X11 Forwarding. Set to `true` to allow X11 Forwarding. | bool | n |
| `sshd_authenticationmethods` | publickey | Specifies the authentication methods that must be successfully completed for a user to be granted access. Make sure to set all required variables for your selected authentication method. Defaults found in `defaults/main.yml` | str | n |
| `sshd_log_level` | VERBOSE | the verbosity level that is used when logging messages from sshd. | str | n |
| `sshd_moduli_file` | /etc/ssh/moduli | path to the SSH moduli file. | str | n |
| `sshd_moduli_minimum` | 2048 | remove Diffie-Hellman parameters smaller than the defined size to mitigate logjam. | int | n |
| `sshd_strict_modes` | true | Check file modes and ownership of the user's files and home directory before accepting login. | bool | n |
| `sshd_syslog_facility` | AUTH | The facility code that is used when logging messages from sshd. | str | n |
## Dependencies

None.

## Example Playbook

```
- hosts: all
  roles:
    - name: devsec.hardening.ssh_hardening
```

<!-- END_ANSIBLE_DOCS -->

## Configuring settings not listed in role-variables

If you want to configure ssh options that are not listed above, you can use `ssh_custom_options` (for `/etc/ssh/ssh_config`) or `sshd_custom_options` (for `/etc/ssh/sshd_config`) to set them. These options will be set on the **beginning** of the file so you can override options further down in the file.

Example playbook:

```yml
- hosts: localhost
  collections:
    - devsec.hardening
  roles:
    - ssh_hardening
  vars:
    ssh_custom_options:
      - "Include /etc/ssh/ssh_config.d/*"
    sshd_custom_options:
      - "AcceptEnv LANG"
```

## After using the role Ansibles template/copy/file module does not work anymore

If you use this role to disable SFTP (`sftp_enabled: false`) you will get errors. Ansible uses by default SFTP to transfer files to the remote hosts. You have to set `scp_if_ssh = True` in your ansible.cfg. This way Ansible uses SCP to copy files. If your control node uses OpenSSH version 9.0 or above, you also need to set `scp_extra_args = "-O"`, since starting with that version the `scp` utility also defaults to using SFTP.

## Changing the default port and idempotency

This role uses the default port 22 or the port configured in the inventory to connect to the server. If the default `ssh` port is changed via `ssh_server_ports`, once the ssh server is restarted, it will still try to connect using the previous port. In order to run this role again on the same server the inventory will have to be updated to use the new ssh port.

If idempotency is important, please consider using role [`ssh-hardening-fallback`](https://github.com/nununo/ansible-ssh-hardening-fallback), which is a wrapper around this role that falls back to port 22 if the configured port is unreachable.
