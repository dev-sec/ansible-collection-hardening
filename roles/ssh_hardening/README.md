# dev-sec.ssh_hardening

![devsec.ssh_hardening](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.ssh_hardening/badge.svg)

## Description

This role provides secure ssh-client and ssh-server configurations. It is intended to be compliant with the [DevSec SSH Baseline](https://github.com/dev-sec/ssh-baseline).

Warning: This role disables root-login on the target server! Please make sure you have another user with su or sudo permissions that can login into the server.

## Requirements

- Ansible >= 2.9

## Role Variables

- `network_ipv6_enable`
  - Default: `false`
  - Description: true if IPv6 is needed. `ssh_listen_to` must also be set to listen to IPv6 addresses (for example `[::]`).
- `ssh_client_config_file`
  - Default: `'/etc/ssh/ssh_config'`
  - Description: path of the ssh client configuration file, e.g. `/etc/ssh/ssh_config.d/custom.conf`.
- `ssh_server_config_file`
  - Default: `'/etc/ssh/sshd_config'`
  - Description: path of the ssh server configuration file, e.g. `/etc/ssh/sshd_config.d/custom.conf`.
- `ssh_server_ports`
  - Default: `['22']`
  - Description: ports on which ssh-server should listen.
- `ssh_client_port`
  - Default: `'22'`
  - Description: Specifies the port number to connect on the remote host.
- `ssh_listen_to`
  - Default: `['0.0.0.0']`
  - Description: one or more ip addresses, to which ssh-server should listen to. Default is all IPv4 adresses, but should be configured to specific addresses for security reasons!
- `ssh_host_key_files`
  - Default: `[]`
  - Description: Host keys for sshd. If empty ['/etc/ssh/ssh_host_rsa_key', '/etc/ssh/ssh_host_ecdsa_key', '/etc/ssh/ssh_host_ed25519_key'] will be used, as far as supported by the installed sshd version.
- `ssh_host_key_algorithms`
  - Default: `[]`
  - Description: Host key algorithms that the server offers. If empty the [default list](https://man.openbsd.org/sshd_config#HostKeyAlgorithms) will be used, otherwise overrides the setting with specified list of algorithms.
- `ssh_client_alive_interval`
  - Default: `600`
  - Description: specifies an interval for sending keepalive messages.
- `ssh_client_alive_count`
  - Default: `3`
  - Description: defines how often keep-alive messages are sent.
- `ssh_permit_tunnel`
  - Default: `false`
  - Description: true if SSH Port Tunneling is required.
- `ssh_remote_hosts`
  - Default: `[]`
  - Description: one or more hosts and their custom options for the ssh-client. Default is empty. See examples in `defaults/main.yml`.
- `ssh_permit_root_login`
  - Default: `no`
  - Description: Disable root-login. Set to `'without-password'` or `'yes'` to enable root-login - The quotes are required!
- `ssh_allow_tcp_forwarding`
  - Default: `no`
  - Description: `'no'` to disable TCP Forwarding. Set to `'yes'` to allow TCP Forwarding. If you are using OpenSSH >= 6.2 version, you can specify `'yes'`, `'no'`, `'all'` or `'local'`. <br> _Note_: values passed to this variable must be strings, thus values `'yes'` and `'no'` should be passed with quotes.
- `ssh_gateway_ports`
  - Default: `false`
  - Description: `false` to disable binding forwarded ports to non-loopback addresses. Set to `true` to force binding on wildcard address. Set to `clientspecified` to allow the client to specify which address to bind to.
- `ssh_allow_agent_forwarding`
  - Default: `false`
  - Description: false to disable Agent Forwarding. Set to true to allow Agent Forwarding.
- `ssh_x11_forwarding`
  - Default: `false`
  - Description: false to disable X11 Forwarding. Set to true to allow X11 Forwarding.
- `ssh_pam_support`
  - Default: `true`
  - Description: true if SSH has PAM support.
- `ssh_use_pam`
  - Default: `true`
  - Description: false to disable pam authentication.
- `ssh_gssapi_support`
  - Default: `false`
  - Description: true if SSH has GSSAPI support.
- `ssh_kerberos_support`
  - Default: `true`
  - Description: true if SSH has Kerberos support.
- `ssh_deny_users`
  - Default: `''`
  - Description: if specified, login is disallowed for user names that match one of the patterns.
- `ssh_allow_users`
  - Default: `''`
  - Description: if specified, login is allowed only for user names that match one of the patterns.
- `ssh_deny_groups`
  - Default: `''`
  - Description: if specified, login is disallowed for users whose primary group or supplementary group list matches one of the patterns.
- `ssh_allow_groups`
  - Default: `''`
  - Description: if specified, login is allowed only for users whose primary group or supplementary group list matches one of the patterns.
- `ssh_authorized_keys_file`
  - Default: `''`
  - Description: change default file that contains the public keys that can be used for user authentication.
- `ssh_trusted_user_ca_keys_file`
  - Default: `''`
  - Description: specifies the file containing trusted certificate authorities public keys used to sign user certificates.
- `ssh_trusted_user_ca_keys`
  - Default: `[]`
  - Description: set the trusted certificate authorities public keys used to sign user certificates. Only used if `ssh_trusted_user_ca_keys_file` is set.
- `ssh_authorized_principals_file`
  - Default: `''`
  - Description: specifies the file containing principals that are allowed. Only used if `ssh_trusted_user_ca_keys_file` is set.
- `ssh_authorized_principals`
  - Default: `[]`
  - Description: list of hashes containing file paths and authorized principals, see `default_custom.yml` for all options. Only used if `ssh_authorized_principals_file` is set.
- `ssh_print_motd`
  - Default: `false`
  - Description: false to disable printing of the MOTD.
- `ssh_print_pam_motd`
  - Default: `false`
  - Description: false to disable printing of the MOTD via pam (Debian and Ubuntu).
- `ssh_print_last_log`
  - Default: `false`
  - Description: false to disable display of last login information.
- `sftp_enabled`
  - Default: `false`
  - Description: true to enable sftp configuration.
- `sftp_umask`
  - Default: `'0027'`
  - Description: Specifies the umask for sftp.
- `sftp_chroot`
  - Default: `true`
  - Description: false to disable chroot for sftp.
- `sftp_chroot_dir`
  - Default: `/home/%u`
  - Description: change default sftp chroot location.
- `ssh_client_roaming`
  - Default: `false`
  - Description: enable experimental client roaming.
- `sshd_moduli_file`
  - Default: `'/etc/ssh/moduli'`
  - Description: path to the SSH moduli file.
- `sshd_moduli_minimum`
  - Default: `2048`
  - Description: remove Diffie-Hellman parameters smaller than the defined size to mitigate logjam.
- `ssh_challengeresponseauthentication`
  - Default: `false`
  - Description: Specifies whether challenge-response authentication is allowed (e.g. via PAM).
- `ssh_client_password_login`
  - Default: `false`
  - Description: `true` to allow password-based authentication with the ssh client.
- `ssh_server_password_login`
  - Default: `false`
  - Description: `true` to allow password-based authentication to the ssh server. You probably also need to change `sshd_authenticationmethods` to include `password` if you set `ssh_server_password_login`: `true`.
- `ssh_banner`
  - Default: `false`
  - Description: `true` to print a banner on login.
- `ssh_banner_path`
  - Default: `'/etc/sshd/banner.txt'`
  - Description: path to the SSH banner file.
- `ssh_client_hardening`
  - Default: `true`
  - Description: `false` to stop harden the client.
- `ssh_client_compression`
  - Default: `false`
  - Description: Specifies whether the client requests compression.
- `ssh_compression`
  - Default: `false`
  - Description: Specifies whether server-side compression is enabled after the user has authenticated successfully.
- `ssh_login_grace_time`
  - Default: `30s`
  - Description: specifies the time allowed for successful authentication to the SSH server.
- `ssh_max_auth_retries`
  - Default: `2`
  - Description: Specifies the maximum number of authentication attempts permitted per connection.
- `ssh_max_sessions`
  - Default: `10`
  - Description: Specifies the maximum number of open sessions permitted from a given connection.
- `ssh_print_debian_banner`
  - Default: `false`
  - Description: `true` to print debian specific banner.
- `ssh_server_enabled`
  - Default: `true`
  - Description: `false` to disable the opensshd server.
- `ssh_server_hardening`
  - Default: `true`
  - Description: `false` to stop harden the server.
- `ssh_server_match_address`
  - Default: `''`
  - Description: Introduces a conditional block. If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file.
- `ssh_server_match_group`
  - Default: `''`
  - Description: Introduces a conditional block. If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file.
- `ssh_server_match_user`
  - Default: `''`
  - Description: Introduces a conditional block. If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file.
- `ssh_server_match_local_port`
  - Default: `''`
  - Description: Introduces a conditional block. If all of the criteria on the Match line are satisfied, the keywords on the following lines override those set in the global section of the config file, until either another Match line or the end of the file.
- `ssh_server_permit_environment_vars`
  - Default: `no`
  - Description: `yes` to specify that ~/.ssh/environment and environment= options in ~/.ssh/authorized_keys are processed by sshd. With openssh version 7.8 it is possible to specify a whitelist of environment variable names in addition to global "yes" or "no" settings.
- `ssh_server_accept_env_vars`
  - Default: `''`
  - Description: Specifies what environment variables sent by the client will be copied into the session's environment, multiple environment variables may be separated by whitespace.
- `ssh_use_dns`
  - Default: `false`
  - Description: Specifies whether sshd should look up the remote host name, and to check that the resolved host name for the remote IP address maps back to the very same IP address.
- `ssh_server_revoked_keys`
  - Default: `[]`
  - Description: a list of revoked public keys that the ssh server will always reject, useful to revoke known weak or compromised keys.
- `ssh_max_startups`
  - Default: `'10:30:60'`
  - Description: Specifies the maximum number of concurrent unauthenticated connections to the SSH daemon.
- `ssh_macs`
  - Default: `[]`
  - Description: Change this list to overwrite macs. Defaults found in `defaults/main.yml`.
- `ssh_kex`
  - Default: `[]`
  - Description: Change this list to overwrite kexs. Defaults found in `defaults/main.yml`.
- `ssh_ciphers`
  - Default: `[]`
  - Description: Change this list to overwrite ciphers. Defaults found in `defaults/main.yml`.
- `ssh_custom_options`
  - Default: `[]`
  - Description: Custom lines for SSH client configuration.
- `sshd_custom_options`
  - Default: `[]`
  - Description: Custom lines for SSH daemon configuration.
- `sshd_syslog_facility`
  - Default: `'AUTH'`
  - Description: The facility code that is used when logging messages from sshd.
- `sshd_log_level`
  - Default: `'VERBOSE'`
  - Description: the verbosity level that is used when logging messages from sshd.
- `sshd_strict_modes`
  - Default: `true`
  - Description: Check file modes and ownership of the user's files and home directory before accepting login.
- `sshd_authenticationmethods`
  - Default: `publickey`
  - Description: Specifies the authentication methods that must be successfully completed for a user to be granted access. Make sure to set all required variables for your selected authentication method. Defaults found in `defaults/main.yml`.

## Example Playbook

```yml
- hosts: localhost
  collections:
    - devsec.hardening
  roles:
    - devsec.hardening.ssh_hardening
```

## Configuring settings not listed in role-variables

If you want to configure ssh options that are not listed above, you can use `ssh_custom_options` (for `/etc/ssh/ssh_config`) or `sshd_custom_options` (for `/etc/ssh/sshd_config`) to set them. These options will be set on the **beginning** of the file so you can override options further down in the file.

Example playbook:

```yml
- hosts: localhost
  collections:
    - devsec.hardening
  roles:
    - devsec.hardening.ssh_hardening
  vars:
    ssh_custom_options:
      - "Include /etc/ssh/ssh_config.d/*"
    sshd_custom_options:
      - "AcceptEnv LANG"
```

## Changing the default port and idempotency

This role uses the default port 22 or the port configured in the inventory to connect to the server. If the default `ssh` port is changed via `ssh_server_ports`, once the ssh server is restarted, it will still try to connect using the previous port. In order to run this role again on the same server the inventory will have to be updated to use the new ssh port.

If idempotency is important, please consider using role [`ssh-hardening-fallback`](https://github.com/nununo/ansible-ssh-hardening-fallback), which is a wrapper around this role that falls back to port 22 if the configured port is unreachable.
