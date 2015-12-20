# Change Log

## [2.0.0](https://github.com/hardening-io/ansible-os-hardening/tree/2.0.0) (2015-11-28)
[Full Changelog](https://github.com/hardening-io/ansible-os-hardening/compare/1.0.0...2.0.0)

**Closed issues:**

- Fix directory structure. [\#48](https://github.com/hardening-io/ansible-os-hardening/issues/48)
- pam auth update error [\#47](https://github.com/hardening-io/ansible-os-hardening/issues/47)

**Merged pull requests:**

- Add explicit role-path to kitchen.yml [\#52](https://github.com/hardening-io/ansible-os-hardening/pull/52) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix pam passwdqc template [\#51](https://github.com/hardening-io/ansible-os-hardening/pull/51) ([rndmh3ro](https://github.com/rndmh3ro))
- New dir layout [\#49](https://github.com/hardening-io/ansible-os-hardening/pull/49) ([rndmh3ro](https://github.com/rndmh3ro))
- remove duplicate "update pam" task [\#46](https://github.com/hardening-io/ansible-os-hardening/pull/46) ([fitz123](https://github.com/fitz123))
- Fix stuck in case pam files was updated before by force update [\#45](https://github.com/hardening-io/ansible-os-hardening/pull/45) ([fitz123](https://github.com/fitz123))
- Fix nologin shell path [\#44](https://github.com/hardening-io/ansible-os-hardening/pull/44) ([fitz123](https://github.com/fitz123))
- improved travis-tests to cover more cases [\#42](https://github.com/hardening-io/ansible-os-hardening/pull/42) ([rndmh3ro](https://github.com/rndmh3ro))

## [1.0.0](https://github.com/hardening-io/ansible-os-hardening/tree/1.0.0) (2015-09-01)
**Closed issues:**

- ansible-os-hardening/tasks/minimize\_access.yml [\#38](https://github.com/hardening-io/ansible-os-hardening/issues/38)
- Role configuration. vars/main.yml? [\#34](https://github.com/hardening-io/ansible-os-hardening/issues/34)
- Sysctl reloading [\#18](https://github.com/hardening-io/ansible-os-hardening/issues/18)
- Add conditions for disabling of ip forwarding [\#15](https://github.com/hardening-io/ansible-os-hardening/issues/15)
- Disable System Accounts [\#6](https://github.com/hardening-io/ansible-os-hardening/issues/6)

**Merged pull requests:**

- Update kitchen-ansible, remove separate debian install [\#40](https://github.com/hardening-io/ansible-os-hardening/pull/40) ([rndmh3ro](https://github.com/rndmh3ro))
- Add mode to su-binary task. Fix \#38 [\#39](https://github.com/hardening-io/ansible-os-hardening/pull/39) ([rndmh3ro](https://github.com/rndmh3ro))
- update common kitchen.yml platforms \(ansible\), kitchen\_debian.yml platforms \(ansible\) [\#37](https://github.com/hardening-io/ansible-os-hardening/pull/37) ([chris-rock](https://github.com/chris-rock))
- Change oneliner if-statements to be more readable [\#36](https://github.com/hardening-io/ansible-os-hardening/pull/36) ([rndmh3ro](https://github.com/rndmh3ro))
- Separate system-vars from editable vars. Fix \#34 [\#35](https://github.com/hardening-io/ansible-os-hardening/pull/35) ([rndmh3ro](https://github.com/rndmh3ro))
- Create limits.d-directory if it does not exist. [\#33](https://github.com/hardening-io/ansible-os-hardening/pull/33) ([rndmh3ro](https://github.com/rndmh3ro))
- Add correct CONTRIB-file [\#32](https://github.com/hardening-io/ansible-os-hardening/pull/32) ([rndmh3ro](https://github.com/rndmh3ro))
- Add Ansible Galaxy badge [\#31](https://github.com/hardening-io/ansible-os-hardening/pull/31) ([rndmh3ro](https://github.com/rndmh3ro))
-  Update readme, todo, changelog, vars [\#30](https://github.com/hardening-io/ansible-os-hardening/pull/30) ([rndmh3ro](https://github.com/rndmh3ro))
- List-cleanup and follow symlinks added [\#29](https://github.com/hardening-io/ansible-os-hardening/pull/29) ([rndmh3ro](https://github.com/rndmh3ro))
- Add module configuration [\#28](https://github.com/hardening-io/ansible-os-hardening/pull/28) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix two sysctl-settings [\#27](https://github.com/hardening-io/ansible-os-hardening/pull/27) ([rndmh3ro](https://github.com/rndmh3ro))
- Add meta-files for Ansible Galaxy [\#26](https://github.com/hardening-io/ansible-os-hardening/pull/26) ([rndmh3ro](https://github.com/rndmh3ro))
- Disable System Accounts. Fix \#6 [\#25](https://github.com/hardening-io/ansible-os-hardening/pull/25) ([rndmh3ro](https://github.com/rndmh3ro))
- Use changed\_when to avoid changed tasks [\#24](https://github.com/hardening-io/ansible-os-hardening/pull/24) ([rndmh3ro](https://github.com/rndmh3ro))
- Delete authconfig-task on rhel-systems [\#23](https://github.com/hardening-io/ansible-os-hardening/pull/23) ([rndmh3ro](https://github.com/rndmh3ro))
- Add missing rhosts-include task [\#21](https://github.com/hardening-io/ansible-os-hardening/pull/21) ([rndmh3ro](https://github.com/rndmh3ro))
- Change sysctl-task. Fix \#18 [\#20](https://github.com/hardening-io/ansible-os-hardening/pull/20) ([rndmh3ro](https://github.com/rndmh3ro))
- Add travis-support [\#17](https://github.com/hardening-io/ansible-os-hardening/pull/17) ([rndmh3ro](https://github.com/rndmh3ro))
- Add conditions for various tasks. Fix \#15 [\#16](https://github.com/hardening-io/ansible-os-hardening/pull/16) ([rndmh3ro](https://github.com/rndmh3ro))
- fix configuration of playbook path [\#14](https://github.com/hardening-io/ansible-os-hardening/pull/14) ([chris-rock](https://github.com/chris-rock))
- Make tasks clearer [\#13](https://github.com/hardening-io/ansible-os-hardening/pull/13) ([rndmh3ro](https://github.com/rndmh3ro))
- Add remove suid/sgid function [\#12](https://github.com/hardening-io/ansible-os-hardening/pull/12) ([rndmh3ro](https://github.com/rndmh3ro))
- Add task to remove unused repos and pkgs [\#11](https://github.com/hardening-io/ansible-os-hardening/pull/11) ([rndmh3ro](https://github.com/rndmh3ro))
- Edit README to fit to os-hardening [\#10](https://github.com/hardening-io/ansible-os-hardening/pull/10) ([rndmh3ro](https://github.com/rndmh3ro))
- ignore RAs on Ipv6 [\#9](https://github.com/hardening-io/ansible-os-hardening/pull/9) ([rndmh3ro](https://github.com/rndmh3ro))
- Repair debian install script [\#8](https://github.com/hardening-io/ansible-os-hardening/pull/8) ([rndmh3ro](https://github.com/rndmh3ro))
- Separate tasks into multiple smaller files [\#7](https://github.com/hardening-io/ansible-os-hardening/pull/7) ([rndmh3ro](https://github.com/rndmh3ro))
- Enable gpg-check on all yum-repositories [\#5](https://github.com/hardening-io/ansible-os-hardening/pull/5) ([rndmh3ro](https://github.com/rndmh3ro))
- Change playbook-path to accomodate test-repo [\#4](https://github.com/hardening-io/ansible-os-hardening/pull/4) ([rndmh3ro](https://github.com/rndmh3ro))
- treat securetty config as an array [\#3](https://github.com/hardening-io/ansible-os-hardening/pull/3) ([arlimus](https://github.com/arlimus))
- Add Securetty-support [\#2](https://github.com/hardening-io/ansible-os-hardening/pull/2) ([rndmh3ro](https://github.com/rndmh3ro))
- Add profile.conf configuration [\#1](https://github.com/hardening-io/ansible-os-hardening/pull/1) ([rndmh3ro](https://github.com/rndmh3ro))



\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*