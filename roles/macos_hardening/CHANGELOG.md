# Changelog

## Unreleased

- Align the role with CIS Apple macOS 26 Tahoe Benchmark v1.0.0 Level 1 and Level 2.
- Add CIS level, per-control waiver, category, payload, and safety switches.
- Add explicit reporting for profile-only and externally remediated controls.
- Add switches for software-update installation/restart and connection-disrupting remote access changes.
- Validate generated configuration profiles and distinguish render from MDM delivery.
- Keep legacy local profile installation available behind an explicit, disabled-by-default switch.
- Default unambiguous automated controls to the CIS state while retaining category, control, transport, update, restart, and access-preservation options.
- Add an explicit manual-control review boundary and conditional Time Machine applicability/freshness policy.
