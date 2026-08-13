# devsec.hardening.macos_hardening

## Description

This Ansible role provides security hardening for macOS 26 Tahoe according to the CIS Apple macOS 26 Tahoe Benchmark (Level 1 and Level 2).

It manages macOS system security settings, sharing services, software update policies, firewall configuration, password policies, audit daemon (`auditd`) controls, and renders Apple configuration profiles (`.mobileconfig`) for local system enforcement or remote MDM distribution.

## Requirements

- macOS 26 Tahoe
- Ansible 2.14 or higher
- `community.general` collection installed

## Usage

Add the role to your playbook:

```yaml
- name: Harden macOS workstations
  hosts: macos
  become: true
  roles:
    - role: devsec.hardening.macos_hardening
      vars:
        macos_cis_level: 2
        macos_login_window_message: "Authorized users only. Disconnect immediately if unauthorized."
        macos_policy_banner_content: "This computer system is private property. Authorized access only."
        macos_profile_install: true
```

## Role Variables

### Main Toggles

| Variable | Default | Description |
| --- | --- | --- |
| `macos_hardening_enabled` | `true` | Main toggle to enable/disable the role |
| `macos_cis_level` | `2` | CIS benchmark level (1 or 2; Level 2 includes Level 1) |

### Subsystem Category Toggles

| Variable | Default | Description |
| --- | --- | --- |
| `macos_update_enabled` | `true` | Enable software update policy hardening |
| `macos_sharing_enabled` | `true` | Enable sharing services hardening |
| `macos_network_enabled` | `true` | Enable firewall and network settings hardening |
| `macos_system_enabled` | `true` | Enable energy, sleep, lock screen, and system settings hardening |
| `macos_security_enabled` | `true` | Enable Gatekeeper, FileVault, sudo, and security settings |
| `macos_account_enabled` | `true` | Enable account, guest, and password policy hardening |
| `macos_audit_enabled` | `true` | Enable auditd and newsyslog retention hardening |
| `macos_safari_enabled` | `true` | Enable Safari and web browser security hardening |
| `macos_profile_enabled` | `true` | Enable configuration profile generation |

### Service & Policy Switches

| Variable | Default | Description |
| --- | --- | --- |
| `macos_manage_remote_login` | `false` | When `false`, Remote Login SSH service management is bypassed. Set `true` if role should manage SSH |
| `macos_disable_remote_login` | `false` | Safety guard: when `false`, the role will **not** disable Remote Login (SSH), preserving remote management connections. Set `true` to force disabling SSH per CIS |
| `macos_manage_remote_management` | `false` | When `false`, Remote Management (ARD) service management is bypassed |
| `macos_install_apple_updates` | `true` | Automatically install Apple software updates |
| `macos_time_server` | `time.apple.com` | Network time synchronization server |
| `macos_password_min_length` | `15` | Minimum password length enforced via `pwpolicy` |
| `macos_password_max_failed_attempts` | `5` | Account lockout threshold after failed attempts |
| `macos_sudo_timestamp_timeout` | `0` | Sudo password caching timeout in minutes (0 = always prompt) |
| `macos_login_window_message` | `""` | Banner text displayed on the login window |
| `macos_policy_banner_content` | `""` | Warning text written to `/Library/Security/PolicyBanner.txt` |

### Configuration Profile Settings

| Variable | Default | Description |
| --- | --- | --- |
| `macos_profile_enabled` | `true` | Enable configuration profile rendering |
| `macos_profile_install` | `true` | When `true`, installs the `.mobileconfig` file directly on local/standalone machines using `profiles install`. Set `false` when deploying via MDM |
| `macos_profile_path` | `/tmp/macos_hardening.mobileconfig` | Target path where rendered `.mobileconfig` file is written |

## Profile Deployment Modes

1. **Standalone / Home User Mode (`macos_profile_install: true`)**:
   Renders `/tmp/macos_hardening.mobileconfig` and executes `/usr/bin/profiles install` directly on the local Mac. This provides automated profile protection without requiring a central MDM server.

2. **Managed Fleet / MDM Mode (`macos_profile_install: false`)**:
   Renders the `.mobileconfig` payload to `macos_profile_path` without executing local profile installation, allowing enterprise management systems (Jamf, Kandji, Intune) to deploy the profile fleet-wide.

## License and Authors

- DevSec Hardening Framework Team
- Joseph Erdosy

Licensed under the Apache License, Version 2.0.
