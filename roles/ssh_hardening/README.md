# dev-sec.ssh_hardening

[![devsec.ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening.yml)
[![devsec.ssh_hardening BSD](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening_bsd.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening_bsd.yml)
[![devsec.ssh_hardening with custom tests](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening_custom_tests.yml/badge.svg)](https://github.com/dev-sec/ansible-collection-hardening/actions/workflows/ssh_hardening_custom_tests.yml)

## Description

This role provides secure ssh-client and ssh-server configurations. It is intended to be compliant with the [DevSec SSH Baseline](https://github.com/dev-sec/ssh-baseline).

Warning: This role disables root-login on the target server! Please make sure you have another user with su or sudo permissions that can login into the server.

## Configuring settings not listed in role-variables

If you want to configure ssh options that are not listed above, you can use `ssh_custom_options` (for `/etc/ssh/ssh_config`) or `sshd_custom_options` (for `/etc/ssh/sshd_config`) to set them. These options will be set on the **beginning** of the file so you can override options further down in the file.

Example playbook:

```yml
- hosts: localhost
  roles:
    - devsec.hardening.ssh_hardening
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

## Disabling systemd-socket activation on Debian and Ubuntu systems

Since Debian 12 and Ubuntu 22.04 the ssh-daemon is not running by default anymore but is instead activated via systemd.
We revert this change to its traditional behaviour.
For more information, see [this issue](https://github.com/dev-sec/ansible-collection-hardening/issues/763).

<!-- BEGIN_ANSIBLE_DOCS -->

## Supported Operating Systems
- EL
  - 8, 9
- Ubuntu
  - focal, jammy, noble
- Debian
  - bookworm, bullseye
- Alpine
- Amazon
- Fedora
- ArchLinux
- SmartOS
- FreeBSD
  - 13.2, 14.0
- OpenBSD
  - 7.0

## Role Variables

- `network_ipv6_enable`
  - Default: `True`
  - Description: `false` if IPv6 is not needed. `ssh_listen_to` must also be set to listen to IPv6 addresses (for example `[::]`).
  - Type: bool
  - Required: no
- `sftp_chroot`
  - Default: `True`
  - Description: Set to `false` to disable chroot for sftp.
  - Type: bool
  - Required: no
- `sftp_chroot_dir`
  - Default: `/home/%u`
  - Description: change default stp chroot location
  - Type: str
  - Required: no
- `sftp_enabled`
  - Default: `True`
  - Description: Set to `false` to disable sftp configuration.
  - Type: bool
  - Required: no
- `sftp_umask`
  - Default: `0027`
  - Description: Specifies the umask for sftp.
  - Type: str
  - Required: no
- `ssh_allow_agent_forwarding`
  - Default: `False`
  - Description: Set to `false` to disable Agent Forwarding. Set to `true` to allow Agent Forwarding.
  - Type: bool
  - Required: no
- `ssh_allow_groups`
  - Default: ``
  - Description: if specified, login is allowed only for users whose primary group or supplementary group list matches one of the patterns.
  - Type: str
  - Required: no
- `ssh_allow_tcp_forwarding`
  - Default: `no`
  - Description: Set to `'no'` or `false` to disable TCP Forwarding. Set to `'yes'` or`True` to allow TCP Forwarding. If you are using OpenSSH >= 6.2 version, you can specify `'yes'`, `'no'`, `'all'`, `'local'`or`'remote'`.
  - Type: str
  - Required: no
- `ssh_allow_users`
  - Default: ``
  - Description: if specified, login is allowed only for user names that match one of the patterns.
  - Type: str
  - Required: no
- `ssh_authorized_keys_file`
  - Default: ``
  - Description: change default file that contains the public keys that can be used for user authentication
  - Type: str
  - Required: no
- `ssh_authorized_principals`
  - Default: `[]`
  - Description: list of hashes containing file paths and authorized principals, see `default_cstom.yml` for all options. Only used if `ssh_authorized_principals_file` is set
  - Type: list of ''
  - Required: no
- `ssh_authorized_principals_file`
  - Default: ``
  - Description: specifies the file containing principals that are allowed. Only used if `ssh_trusted_user_ca_keys_file` is set.
  - Type: str
  - Required: no
- `ssh_banner`
  - Default: `False`
  - Description: Set to `true` to print a banner on login.
  - Type: bool
  - Required: no
- `ssh_banner_path`
  - Default: `/etc/sshd/banner.txt`
  - Description: path to the SSH banner file.
  - Type: str
  - Required: no
- `ssh_challengeresponseauthentication`
  - Default: `False`
  - Description: Specifies whether challenge-response authentication is allowed (e.g. via PAM).
  - Type: bool
  - Required: no
- `ssh_ciphers`
  - Default: ``
  - Description: Change this list to overwrite ciphers. Defaults found in `defaults/main.yml`
  - Type: list of ''
  - Required: no
- `ssh_client_alive_count`
  - Default: `3`
  - Description: Defines the number of acceptable unanswered client alive messages before disconnecting clients.
  - Type: int
  - Required: no
- `ssh_client_alive_interval`
  - Default: `300`
  - Description: specifies an interval for sending keepalive messages.
  - Type: int
  - Required: no
- `ssh_client_compression`
  - Default: `False`
  - Description: Specifies whether the client requests compression.
  - Type: bool
  - Required: no
- `ssh_client_config_file`
  - Default: `/etc/ssh/ssh_config`
  - Description: path of the ssh client configuration file, e.g. `/etc/ssh/ssh_config.d/custom.conf`.
  - Type: str
  - Required: no
- `ssh_client_hardening`
  - Default: `True`
  - Description: Set to `false` to stop harden the client.
  - Type: bool
  - Required: no
- `ssh_client_host_key_algorithms`
  - Default: `[]`
  - Description: Specifies the host key algorithms that the client wants to use in order of preference. If empty the default list will be used. Otherwise overrides the setting with specified list of algorithms. Check `man ssh_config`, `ssh -Q HostKeyAlgorithms` or other sources for supported algorithms - make sure you check the correct version!
  - Type: list of ''
  - Required: no
- `ssh_client_password_login`
  - Default: `False`
  - Description: Set to `true` to allow password-based authentication with the ssh client.
  - Type: bool
  - Required: no
- `ssh_client_port`
  - Default: `22`
  - Description: Specifies the port number to connect on the remote host.
  - Type: str
  - Required: no
- `ssh_client_roaming`
  - Default: `False`
  - Description: enable experimental client roaming.
  - Type: bool
  - Required: no
- `ssh_compression`
  - Default: `False`
  - Description: Specifies whether server-side compression is enabled after the user has authenticated successfully.
  - Type: bool
  - Required: no
- `ssh_custom_options`
  - Default: `[]`
  - Description: Custom lines for SSH client configuration.
  - Type: list of ''
  - Required: no
- `ssh_custom_selinux_dir`
  - Default: `/etc/selinux/local-policies`
  - Description: directory where to store the ssh_password policy
  - Type: str
  - Required: no
- `ssh_deny_groups`
  - Default: ``
  - Description: if specified, login is disallowed for users whose primary group or supplementary group list matches one of the patterns.
  - Type: str
  - Required: no
- `ssh_deny_users`
  - Default: ``
  - Description: if specified, login is disallowed for user names that match one of the patterns.
  - Type: str
  - Required: no
- `ssh_forward_agent`
  - Default: `no`
  - Description: Enables the ssh forward agent for the Cli if set to 'yes'
  - Type: str
  - Required: no
- `ssh_gateway_ports`
  - Default: `False`
  - Description: Set to `false` to disable binding forwarded ports to non-loopback addresses. Set to `true` to force binding on wildcard address. Set to `clientspecified` to allow the client to specify which address to bind to.
  - Type: raw
  - Required: no
- `ssh_gssapi_delegation`
  - Default: `False`
  - Description: Set to `true` to enable GSSAPI credential forwarding.
  - Type: bool
  - Required: no
- `ssh_gssapi_support`
  - Default: `False`
  - Description: Set to `true` to enable GSSAPI authentication (both client and server).
  - Type: bool
  - Required: no
- `ssh_hardening_enabled`
  - Default: `True`
  - Description: Whether to run the hardening
  - Type: bool
  - Required: no
- `ssh_host_certificates`
  - Default: `[]`
  - Description: Host certificates to look for when starting sshd
  - Type: list of ''
  - Required: no
- `ssh_host_key_algorithms`
  - Default: `[]`
  - Description: Host key algorithms that the server offers. If empty the default list will be used. Otherwise overrides the setting with specified list of algorithms. Check `man sshd_config`, `ssh -Q HostKeyAlgorithms` or other sources for supported algorithms - make sure you check the correct version
  - Type: list of ''
  - Required: no
- `ssh_host_key_files`
  - Default: ``
  - Description: Host keys for sshd. If empty ['/etc/ssh/ssh_host_rsa_key', '/etc/ssh/ssh_host_ecdsa_key', '/etc/ssh/ssh_host_ed25519_key'] will be used, as far as supported by the installed sshd version.
  - Type: list of ''
  - Required: no
- `ssh_host_rsa_key_size`
  - Default: `4096`
  - Description: Specifies the number of bits in the private host RSA key to create.
  - Type: int
  - Required: no
- `ssh_kerberos_support`
  - Default: `True`
  - Description: Set to `true` if SSH has Kerberos support.
  - Type: bool
  - Required: no
- `ssh_kex`
  - Default: ``
  - Description: Change this list to overwrite kexs. Defaults found in `defaults/main.yml`
  - Type: list of ''
  - Required: no
- `ssh_listen_to`
  - Default: `['0.0.0.0']`
  - Description: one or more ip addresses, to which ssh-server should listen to. Default is all IPv4 addresses, but should be configured to specific addresses for security reasons
  - Type: list of ''
  - Required: no
- `ssh_login_grace_time`
  - Default: `30s`
  - Description: specifies the time allowed for successful authentication to the SSH server.
  - Type: str
  - Required: no
- `ssh_macs`
  - Default: ``
  - Description: Change this list to overwrite macs. Defaults found in `defaults/main.yml`
  - Type: list of ''
  - Required: no
- `ssh_max_auth_retries`
  - Default: `2`
  - Description: Specifies the maximum number of authentication attempts permitted per connection.
  - Type: int
  - Required: no
- `ssh_max_sessions`
  - Default: `10`
  - Description: Specifies the maximum number of open sessions permitted from a given connection.
  - Type: int
  - Required: no
- `ssh_max_startups`
  - Default: `10:30:60`
  - Description: Specifies the maximum number of concurrent unauthenticated connections to the SSH daemon.
  - Type: str
  - Required: no
- `ssh_pam_support`
  - Default: `True`
  - Description: Set to `true` if SSH has PAM support.
  - Type: bool
  - Required: no
- `ssh_permit_root_login`
  - Default: `no`
  - Description: Disable root-login. Set to `'without-password'` or `'yes'` to enable root-login - The quotes are required!
  - Type: str
  - Required: no
- `ssh_permit_tunnel`
  - Default: `no`
  - Description: Specifies whether tun(4) device forwarding is allowed. The argument must be "yes", point-to-point (layer 3), ethernet (layer 2), or "no". Specifying yes permits both point-to-point and ethernet. - The quotes are required!
  - Type: str
  - Required: no
  - Choices:
    - no
    - yes
    - point-to-point
    - ethernet
- `ssh_print_debian_banner`
  - Default: `False`
  - Description: Set to `true` to print debian specific banner.
  - Type: bool
  - Required: no
- `ssh_print_last_log`
  - Default: `False`
  - Description: Set to `false` to disable display of last login information.
  - Type: bool
  - Required: no
- `ssh_print_motd`
  - Default: `False`
  - Description: Set to `false` to disable printing of the MOTD.
  - Type: bool
  - Required: no
- `ssh_print_pam_motd`
  - Default: `False`
  - Description: Set to `false` to disable printing of the MOTD via pam (Debian and Ubuntu).
  - Type: bool
  - Required: no
- `ssh_ps59`
  - Default: `sandbox`
  - Description: Specifies whether sshd separates privileges by creating an unprivileged child process to deal with incoming network traffic.
  - Type: str
  - Required: no
- `ssh_remote_hosts`
  - Default: `[]`
  - Description: one or more hosts and their custom options for the ssh-client. Default is empty. See examples in `defaults/main.yml`
  - Type: list of ''
  - Required: no
- `ssh_server_accept_env_vars`
  - Default: ``
  - Description: Specifies what environment variables sent by the client will be copied into the session's environment, multiple environment variables may be separated by whitespace.
  - Type: str
  - Required: no
- `ssh_server_config_file`
  - Default: `/etc/ssh/sshd_config`
  - Description: path of the ssh server configuration file, e.g. `/etc/ssh/sshd_config.d/custom.conf`.
  - Type: str
  - Required: no
- `ssh_server_enabled`
  - Default: `True`
  - Description: Set to `false` to disable the opensshd server.
  - Type: bool
  - Required: no
- `ssh_server_hardening`
  - Default: `True`
  - Description: Set to `false` to stop harden the server.
  - Type: bool
  - Required: no
- `ssh_server_match_address`
  - Default: ``
  - Description: Introduces a conditional block. If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file.
  - Type: str
  - Required: no
- `ssh_server_match_group`
  - Default: ``
  - Description: Introduces a conditional block. If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file.
  - Type: str
  - Required: no
- `ssh_server_match_local_port`
  - Default: ``
  - Description: Introduces a conditional block. If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file.
  - Type: str
  - Required: no
- `ssh_server_match_user`
  - Default: ``
  - Description: Introduces a conditional block. If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file.
  - Type: str
  - Required: no
- `ssh_server_password_login`
  - Default: `False`
  - Description: Set to `true` to allow password-based authentication to the ssh server. You probably also need to change `sshd_authenticationmethods` to include `password` if you set `ssh_server_password_login`: `true`.
  - Type: bool
  - Required: no
- `ssh_server_permit_environment_vars`
  - Default: `no`
  - Description: `yes` to specify that ~/.ssh/environment and environment= options in ~/.ssh/authorized_keys are processed by sshd. With openssh version 7.8 it is possible to specify a whitelist of environment variable names in addition to global 'yes' or 'no' settings.
  - Type: str
  - Required: no
- `ssh_server_ports`
  - Default: `['22']`
  - Description: ports on which ssh-server should listen.
  - Type: list of ''
  - Required: no
- `ssh_server_revoked_keys`
  - Default: `[]`
  - Description: a list of revoked public keys that the ssh server will always reject, useful to revoke known weak or compromised keys.
  - Type: list of ''
  - Required: no
- `ssh_server_service_enabled`
  - Default: `True`
  - Description: Set to `false` to disable starting sshd at boot.
  - Type: bool
  - Required: no
- `ssh_trusted_user_ca_keys`
  - Default: `[]`
  - Description: set the trusted certificate authorities public keys used to sign user certificates. Only used if `ssh_trusted_user_ca_keys_file` is set.
  - Type: list of ''
  - Required: no
- `ssh_trusted_user_ca_keys_file`
  - Default: ``
  - Description: specifies the file containing trusted certificate authorities public keys used to sign user certificates.
  - Type: str
  - Required: no
- `ssh_use_dns`
  - Default: `False`
  - Description: Specifies whether sshd should look up the remote host name, and to check that the resolved host name for the remote IP address maps back to the very same IP address.
  - Type: bool
  - Required: no
- `ssh_use_pam`
  - Default: `True`
  - Description: Set to `false` to disable pam authentication.
  - Type: bool
  - Required: no
- `ssh_x11_forwarding`
  - Default: `False`
  - Description: Set to `false` to disable X11 Forwarding. Set to `true` to allow X11 Forwarding.
  - Type: bool
  - Required: no
- `sshd_authenticationmethods`
  - Default: `publickey`
  - Description: Specifies the authentication methods that must be successfully completed for a user to be granted access. Make sure to set all required variables for your selected authentication method. Defaults found in `defaults/main.yml`
  - Type: str
  - Required: no
- `sshd_custom_options`
  - Default: `[]`
  - Description: Custom lines for SSH daemon configuration.
  - Type: list of ''
  - Required: no
- `sshd_log_level`
  - Default: `VERBOSE`
  - Description: the verbosity level that is used when logging messages from sshd.
  - Type: str
  - Required: no
- `sshd_moduli_file`
  - Default: `/etc/ssh/moduli`
  - Description: path to the SSH moduli file.
  - Type: str
  - Required: no
- `sshd_moduli_minimum`
  - Default: `2048`
  - Description: remove Diffie-Hellman parameters smaller than the defined size to mitigate logjam.
  - Type: int
  - Required: no
- `sshd_strict_modes`
  - Default: `True`
  - Description: Check file modes and ownership of the user's files and home directory before accepting login.
  - Type: bool
  - Required: no
- `sshd_syslog_facility`
  - Default: `AUTH`
  - Description: The facility code that is used when logging messages from sshd.
  - Type: str
  - Required: no

## Dependencies

None.

## Example Playbook

```
- hosts: all
  become: true
  roles:
    - name: devsec.hardening.ssh_hardening
```

<!-- END_ANSIBLE_DOCS -->
