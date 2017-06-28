# Change Log

## [4.1.0](https://github.com/dev-sec/ansible-os-hardening/tree/4.1.0) (2017-06-27)
[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/4.0.0...4.1.0)

**Fixed bugs:**

- Change system accounts not on the user provided ignore-list items are not JSON serializable [\#125](https://github.com/dev-sec/ansible-os-hardening/issues/125)

**Closed issues:**

- Enhancement: Pin python dependencies for development and testing [\#127](https://github.com/dev-sec/ansible-os-hardening/issues/127)
- Update readme to include baselines [\#122](https://github.com/dev-sec/ansible-os-hardening/issues/122)

**Merged pull requests:**

- Converts set to JSON-serializable list [\#126](https://github.com/dev-sec/ansible-os-hardening/pull/126) ([pestaa](https://github.com/pestaa))
- add more sysctl settings, allow overwriting [\#120](https://github.com/dev-sec/ansible-os-hardening/pull/120) ([rndmh3ro](https://github.com/rndmh3ro))

## [4.0.0](https://github.com/dev-sec/ansible-os-hardening/tree/4.0.0) (2017-03-14)
[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/3.2.0...4.0.0)

**Implemented enhancements:**

- Description of the Ansible roles of dev-sec says "This Ansible playbook" [\#97](https://github.com/dev-sec/ansible-os-hardening/issues/97)
- install initramfs-tools [\#114](https://github.com/dev-sec/ansible-os-hardening/pull/114) ([rndmh3ro](https://github.com/rndmh3ro))
- omit empty variables [\#106](https://github.com/dev-sec/ansible-os-hardening/pull/106) ([rndmh3ro](https://github.com/rndmh3ro))

**Fixed bugs:**

- The role fails when conditionally included [\#105](https://github.com/dev-sec/ansible-os-hardening/issues/105)
- omit empty variables [\#106](https://github.com/dev-sec/ansible-os-hardening/pull/106) ([rndmh3ro](https://github.com/rndmh3ro))
- Could not find gem 'ruby \(\>= 2.1.0\)' [\#116](https://github.com/dev-sec/ansible-os-hardening/issues/116)
- The task sysctl fails when /etc/initramfs-tools is not present [\#111](https://github.com/dev-sec/ansible-os-hardening/issues/111)
- Deprecation warning always\_run [\#103](https://github.com/dev-sec/ansible-os-hardening/issues/103)

**Closed issues:**

- Error running on RHEL 7 due to syntax issues [\#112](https://github.com/dev-sec/ansible-os-hardening/issues/112)
- disable password age [\#109](https://github.com/dev-sec/ansible-os-hardening/issues/109)

**Merged pull requests:**

- change shadow owner in debian systems [\#117](https://github.com/dev-sec/ansible-os-hardening/pull/117) ([rndmh3ro](https://github.com/rndmh3ro))
- Rhel7 [\#113](https://github.com/dev-sec/ansible-os-hardening/pull/113) ([tyrken](https://github.com/tyrken))
- use new Docker images [\#110](https://github.com/dev-sec/ansible-os-hardening/pull/110) ([rndmh3ro](https://github.com/rndmh3ro))
- Don’t refer to this role as "playbook" in the role description [\#104](https://github.com/dev-sec/ansible-os-hardening/pull/104) ([ypid](https://github.com/ypid))

## [3.2.0](https://github.com/dev-sec/ansible-os-hardening/tree/3.2.0) (2016-10-24)
[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/3.1.0...3.2.0)

**Fixed bugs:**

- CentOS 7 selinux dependencies [\#102](https://github.com/dev-sec/ansible-os-hardening/issues/102)
- ubuntu xenial warning during activate gpg-check for yum-repos [\#99](https://github.com/dev-sec/ansible-os-hardening/issues/99)
- rhel\_system\_auth.j2 is still using pam\_passwdqc.so for CentOS 7 [\#98](https://github.com/dev-sec/ansible-os-hardening/issues/98)
- Enable pam\_pwquality in rhel-family \> 7 [\#73](https://github.com/dev-sec/ansible-os-hardening/issues/73)
- "irc" user always changed after reboot [\#53](https://github.com/dev-sec/ansible-os-hardening/issues/53)

**Merged pull requests:**

- update template [\#101](https://github.com/dev-sec/ansible-os-hardening/pull/101) ([rndmh3ro](https://github.com/rndmh3ro))
- fix deprecation warning for undefined error. \#99 [\#100](https://github.com/dev-sec/ansible-os-hardening/pull/100) ([rndmh3ro](https://github.com/rndmh3ro))
- add rhel7 pam\_pwquality. fix \#73 [\#94](https://github.com/dev-sec/ansible-os-hardening/pull/94) ([rndmh3ro](https://github.com/rndmh3ro))

## [3.1.0](https://github.com/dev-sec/ansible-os-hardening/tree/3.1.0) (2016-08-03)
[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/3.1...3.1.0)

## [3.1](https://github.com/dev-sec/ansible-os-hardening/tree/3.1) (2016-07-27)
[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/3.0.0...3.1)

**Implemented enhancements:**

- Supports --check mode [\#93](https://github.com/dev-sec/ansible-os-hardening/pull/93) ([conorsch](https://github.com/conorsch))
- Adds support for CentOS 7 [\#91](https://github.com/dev-sec/ansible-os-hardening/pull/91) ([conorsch](https://github.com/conorsch))
- Docker [\#90](https://github.com/dev-sec/ansible-os-hardening/pull/90) ([rndmh3ro](https://github.com/rndmh3ro))
- debian 8 support [\#88](https://github.com/dev-sec/ansible-os-hardening/pull/88) ([rndmh3ro](https://github.com/rndmh3ro))
- Ufw manage defaults [\#85](https://github.com/dev-sec/ansible-os-hardening/pull/85) ([fitz123](https://github.com/fitz123))
- replace ignore\_errors to failed\_when to supress ugly error warnings [\#81](https://github.com/dev-sec/ansible-os-hardening/pull/81) ([fitz123](https://github.com/fitz123))
- fix bare variables usage for loops [\#79](https://github.com/dev-sec/ansible-os-hardening/pull/79) ([fitz123](https://github.com/fitz123))

**Fixed bugs:**

- Centos 7.1 fails at  \[Change various sysctl-settings on rhel-hosts...\] [\#74](https://github.com/dev-sec/ansible-os-hardening/issues/74)
- Hardening fails on Centos 7.1 at task 'minimize access' [\#71](https://github.com/dev-sec/ansible-os-hardening/issues/71)

**Closed issues:**

- Permissions on /etc/shadow can lock out GUI users [\#86](https://github.com/dev-sec/ansible-os-hardening/issues/86)
- network related sysctl rewritten by ufw in ubuntu  [\#82](https://github.com/dev-sec/ansible-os-hardening/issues/82)
- ansible \>= 2.0 complains: Using bare variables is deprecated [\#78](https://github.com/dev-sec/ansible-os-hardening/issues/78)
- Norm-Audit-Hardening-Audit [\#76](https://github.com/dev-sec/ansible-os-hardening/issues/76)

**Merged pull requests:**

- Fix a formatting issue in readme. [\#92](https://github.com/dev-sec/ansible-os-hardening/pull/92) ([vivekagr](https://github.com/vivekagr))
- Permits overriding permissions on /etc/shadow [\#89](https://github.com/dev-sec/ansible-os-hardening/pull/89) ([conorsch](https://github.com/conorsch))

## [3.0.0](https://github.com/dev-sec/ansible-os-hardening/tree/3.0.0) (2016-03-13)
[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/2.0.0...3.0.0)

**Implemented enhancements:**

- update platforms in meta-file [\#69](https://github.com/dev-sec/ansible-os-hardening/pull/69) ([rndmh3ro](https://github.com/rndmh3ro))
- add webhook for ansible galaxy [\#68](https://github.com/dev-sec/ansible-os-hardening/pull/68) ([rndmh3ro](https://github.com/rndmh3ro))
- Move sysctl vars to defaults [\#67](https://github.com/dev-sec/ansible-os-hardening/pull/67) ([rndmh3ro](https://github.com/rndmh3ro))
- make sys\_uid and sys\_gid configurable [\#62](https://github.com/dev-sec/ansible-os-hardening/pull/62) ([rndmh3ro](https://github.com/rndmh3ro))
- Ansible 2.0 support [\#59](https://github.com/dev-sec/ansible-os-hardening/pull/59) ([rndmh3ro](https://github.com/rndmh3ro))
- use inspec as test framework [\#58](https://github.com/dev-sec/ansible-os-hardening/pull/58) ([chris-rock](https://github.com/chris-rock))
- Packages as attributes [\#57](https://github.com/dev-sec/ansible-os-hardening/pull/57) ([rndmh3ro](https://github.com/rndmh3ro))
- Change categories to tags for upcoming ansible 2.0 [\#56](https://github.com/dev-sec/ansible-os-hardening/pull/56) ([rndmh3ro](https://github.com/rndmh3ro))
- Add SINGLE and PROMPT parameters. [\#55](https://github.com/dev-sec/ansible-os-hardening/pull/55) ([rndmh3ro](https://github.com/rndmh3ro))
- add changelog generator [\#54](https://github.com/dev-sec/ansible-os-hardening/pull/54) ([chris-rock](https://github.com/chris-rock))

**Fixed bugs:**

- Updates "tags" parameters on includes in main.yml [\#66](https://github.com/dev-sec/ansible-os-hardening/pull/66) ([conorsch](https://github.com/conorsch))
- Suid set def var, fix \#64 [\#63](https://github.com/dev-sec/ansible-os-hardening/pull/63) ([rndmh3ro](https://github.com/rndmh3ro))
- ERROR! Include tasks should not specify tags in more than one way [\#60](https://github.com/dev-sec/ansible-os-hardening/pull/60) ([fitz123](https://github.com/fitz123))

**Closed issues:**

- Hardening fails on Centos 7.1 at task 'remove suid/sgid bit from all binaries except in system and user whitelist' [\#72](https://github.com/dev-sec/ansible-os-hardening/issues/72)
- ansible 2.0 | "remove suid/sgid" task fails [\#64](https://github.com/dev-sec/ansible-os-hardening/issues/64)
- Custom sysctl [\#50](https://github.com/dev-sec/ansible-os-hardening/issues/50)

**Merged pull requests:**

- Release 3.0.0 [\#75](https://github.com/dev-sec/ansible-os-hardening/pull/75) ([rndmh3ro](https://github.com/rndmh3ro))

## [2.0.0](https://github.com/dev-sec/ansible-os-hardening/tree/2.0.0) (2015-11-28)
[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/1.0.0...2.0.0)

**Closed issues:**

- Fix directory structure. [\#48](https://github.com/dev-sec/ansible-os-hardening/issues/48)
- pam auth update error [\#47](https://github.com/dev-sec/ansible-os-hardening/issues/47)

**Merged pull requests:**

- Add explicit role-path to kitchen.yml [\#52](https://github.com/dev-sec/ansible-os-hardening/pull/52) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix pam passwdqc template [\#51](https://github.com/dev-sec/ansible-os-hardening/pull/51) ([rndmh3ro](https://github.com/rndmh3ro))
- New dir layout [\#49](https://github.com/dev-sec/ansible-os-hardening/pull/49) ([rndmh3ro](https://github.com/rndmh3ro))
- remove duplicate "update pam" task [\#46](https://github.com/dev-sec/ansible-os-hardening/pull/46) ([fitz123](https://github.com/fitz123))
- Fix stuck in case pam files was updated before by force update [\#45](https://github.com/dev-sec/ansible-os-hardening/pull/45) ([fitz123](https://github.com/fitz123))
- Fix nologin shell path [\#44](https://github.com/dev-sec/ansible-os-hardening/pull/44) ([fitz123](https://github.com/fitz123))
- improved travis-tests to cover more cases [\#42](https://github.com/dev-sec/ansible-os-hardening/pull/42) ([rndmh3ro](https://github.com/rndmh3ro))

## [1.0.0](https://github.com/dev-sec/ansible-os-hardening/tree/1.0.0) (2015-09-01)
**Closed issues:**

- ansible-os-hardening/tasks/minimize\_access.yml [\#38](https://github.com/dev-sec/ansible-os-hardening/issues/38)
- Role configuration. vars/main.yml? [\#34](https://github.com/dev-sec/ansible-os-hardening/issues/34)
- Sysctl reloading [\#18](https://github.com/dev-sec/ansible-os-hardening/issues/18)
- Add conditions for disabling of ip forwarding [\#15](https://github.com/dev-sec/ansible-os-hardening/issues/15)
- Disable System Accounts [\#6](https://github.com/dev-sec/ansible-os-hardening/issues/6)

**Merged pull requests:**

- Update kitchen-ansible, remove separate debian install [\#40](https://github.com/dev-sec/ansible-os-hardening/pull/40) ([rndmh3ro](https://github.com/rndmh3ro))
- Add mode to su-binary task. Fix \#38 [\#39](https://github.com/dev-sec/ansible-os-hardening/pull/39) ([rndmh3ro](https://github.com/rndmh3ro))
- update common kitchen.yml platforms \(ansible\), kitchen\_debian.yml platforms \(ansible\) [\#37](https://github.com/dev-sec/ansible-os-hardening/pull/37) ([chris-rock](https://github.com/chris-rock))
- Change oneliner if-statements to be more readable [\#36](https://github.com/dev-sec/ansible-os-hardening/pull/36) ([rndmh3ro](https://github.com/rndmh3ro))
- Separate system-vars from editable vars. Fix \#34 [\#35](https://github.com/dev-sec/ansible-os-hardening/pull/35) ([rndmh3ro](https://github.com/rndmh3ro))
- Create limits.d-directory if it does not exist. [\#33](https://github.com/dev-sec/ansible-os-hardening/pull/33) ([rndmh3ro](https://github.com/rndmh3ro))
- Add correct CONTRIB-file [\#32](https://github.com/dev-sec/ansible-os-hardening/pull/32) ([rndmh3ro](https://github.com/rndmh3ro))
- Add Ansible Galaxy badge [\#31](https://github.com/dev-sec/ansible-os-hardening/pull/31) ([rndmh3ro](https://github.com/rndmh3ro))
-  Update readme, todo, changelog, vars [\#30](https://github.com/dev-sec/ansible-os-hardening/pull/30) ([rndmh3ro](https://github.com/rndmh3ro))
- List-cleanup and follow symlinks added [\#29](https://github.com/dev-sec/ansible-os-hardening/pull/29) ([rndmh3ro](https://github.com/rndmh3ro))
- Add module configuration [\#28](https://github.com/dev-sec/ansible-os-hardening/pull/28) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix two sysctl-settings [\#27](https://github.com/dev-sec/ansible-os-hardening/pull/27) ([rndmh3ro](https://github.com/rndmh3ro))
- Add meta-files for Ansible Galaxy [\#26](https://github.com/dev-sec/ansible-os-hardening/pull/26) ([rndmh3ro](https://github.com/rndmh3ro))
- Disable System Accounts. Fix \#6 [\#25](https://github.com/dev-sec/ansible-os-hardening/pull/25) ([rndmh3ro](https://github.com/rndmh3ro))
- Use changed\_when to avoid changed tasks [\#24](https://github.com/dev-sec/ansible-os-hardening/pull/24) ([rndmh3ro](https://github.com/rndmh3ro))
- Delete authconfig-task on rhel-systems [\#23](https://github.com/dev-sec/ansible-os-hardening/pull/23) ([rndmh3ro](https://github.com/rndmh3ro))
- Add missing rhosts-include task [\#21](https://github.com/dev-sec/ansible-os-hardening/pull/21) ([rndmh3ro](https://github.com/rndmh3ro))
- Change sysctl-task. Fix \#18 [\#20](https://github.com/dev-sec/ansible-os-hardening/pull/20) ([rndmh3ro](https://github.com/rndmh3ro))
- Add travis-support [\#17](https://github.com/dev-sec/ansible-os-hardening/pull/17) ([rndmh3ro](https://github.com/rndmh3ro))
- Add conditions for various tasks. Fix \#15 [\#16](https://github.com/dev-sec/ansible-os-hardening/pull/16) ([rndmh3ro](https://github.com/rndmh3ro))
- fix configuration of playbook path [\#14](https://github.com/dev-sec/ansible-os-hardening/pull/14) ([chris-rock](https://github.com/chris-rock))
- Make tasks clearer [\#13](https://github.com/dev-sec/ansible-os-hardening/pull/13) ([rndmh3ro](https://github.com/rndmh3ro))
- Add remove suid/sgid function [\#12](https://github.com/dev-sec/ansible-os-hardening/pull/12) ([rndmh3ro](https://github.com/rndmh3ro))
- Add task to remove unused repos and pkgs [\#11](https://github.com/dev-sec/ansible-os-hardening/pull/11) ([rndmh3ro](https://github.com/rndmh3ro))
- Edit README to fit to os-hardening [\#10](https://github.com/dev-sec/ansible-os-hardening/pull/10) ([rndmh3ro](https://github.com/rndmh3ro))
- ignore RAs on Ipv6 [\#9](https://github.com/dev-sec/ansible-os-hardening/pull/9) ([rndmh3ro](https://github.com/rndmh3ro))
- Repair debian install script [\#8](https://github.com/dev-sec/ansible-os-hardening/pull/8) ([rndmh3ro](https://github.com/rndmh3ro))
- Separate tasks into multiple smaller files [\#7](https://github.com/dev-sec/ansible-os-hardening/pull/7) ([rndmh3ro](https://github.com/rndmh3ro))
- Enable gpg-check on all yum-repositories [\#5](https://github.com/dev-sec/ansible-os-hardening/pull/5) ([rndmh3ro](https://github.com/rndmh3ro))
- Change playbook-path to accomodate test-repo [\#4](https://github.com/dev-sec/ansible-os-hardening/pull/4) ([rndmh3ro](https://github.com/rndmh3ro))
- treat securetty config as an array [\#3](https://github.com/dev-sec/ansible-os-hardening/pull/3) ([arlimus](https://github.com/arlimus))
- Add Securetty-support [\#2](https://github.com/dev-sec/ansible-os-hardening/pull/2) ([rndmh3ro](https://github.com/rndmh3ro))
- Add profile.conf configuration [\#1](https://github.com/dev-sec/ansible-os-hardening/pull/1) ([rndmh3ro](https://github.com/rndmh3ro))



\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*
