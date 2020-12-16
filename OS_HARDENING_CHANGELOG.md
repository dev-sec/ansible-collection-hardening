# Changelog

## [6.2.0](https://github.com/dev-sec/ansible-os-hardening/tree/6.2.0) (2020-08-17)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/6.1.0...6.2.0)

**Implemented enhancements:**

- Optimize and unify when clause [\#295](https://github.com/dev-sec/ansible-os-hardening/pull/295) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[patch](https://github.com/dev-sec/ansible-os-hardening/labels/patch)] ([Alexhha](https://github.com/Alexhha))
- use find module instead of shell [\#294](https://github.com/dev-sec/ansible-os-hardening/pull/294) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[patch](https://github.com/dev-sec/ansible-os-hardening/labels/patch)] ([danielkubat](https://github.com/danielkubat))
- improve testing [\#287](https://github.com/dev-sec/ansible-os-hardening/pull/287) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[minor](https://github.com/dev-sec/ansible-os-hardening/labels/minor)] ([schurzi](https://github.com/schurzi))

**Fixed bugs:**

- Inconsistent use of role vars/role defaults [\#284](https://github.com/dev-sec/ansible-os-hardening/issues/284) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- replace module parameter fixed [\#297](https://github.com/dev-sec/ansible-os-hardening/pull/297) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] [[patch](https://github.com/dev-sec/ansible-os-hardening/labels/patch)] ([danielkubat](https://github.com/danielkubat))

**Closed issues:**

- Consider using find module instead of shell [\#293](https://github.com/dev-sec/ansible-os-hardening/issues/293)
- Optimize logical OR in when clause [\#292](https://github.com/dev-sec/ansible-os-hardening/issues/292)
- vfat added to dev-sec.conf, but efi is used [\#288](https://github.com/dev-sec/ansible-os-hardening/issues/288)
- OpenSUSE Support [\#249](https://github.com/dev-sec/ansible-os-hardening/issues/249)

**Merged pull requests:**

- fix fedora build [\#296](https://github.com/dev-sec/ansible-os-hardening/pull/296) ([rndmh3ro](https://github.com/rndmh3ro))
- do not blacklist used filesystems [\#289](https://github.com/dev-sec/ansible-os-hardening/pull/289) [[patch](https://github.com/dev-sec/ansible-os-hardening/labels/patch)] ([schurzi](https://github.com/schurzi))
- move hidepid vars into defaults so theyre overwritable [\#285](https://github.com/dev-sec/ansible-os-hardening/pull/285) [[patch](https://github.com/dev-sec/ansible-os-hardening/labels/patch)] ([rndmh3ro](https://github.com/rndmh3ro))

## [6.1.0](https://github.com/dev-sec/ansible-os-hardening/tree/6.1.0) (2020-07-21)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/6.0.3...6.1.0)

**Implemented enhancements:**

- Mount proc filesystem using hidepid option [\#283](https://github.com/dev-sec/ansible-os-hardening/pull/283) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[minor](https://github.com/dev-sec/ansible-os-hardening/labels/minor)] ([alegrey91](https://github.com/alegrey91))

**Fixed bugs:**

- Is it safe to use on Debian 10? The build is failing. [\#281](https://github.com/dev-sec/ansible-os-hardening/issues/281) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]

**Closed issues:**

- The state of the galaxy release [\#269](https://github.com/dev-sec/ansible-os-hardening/issues/269)

**Merged pull requests:**

- install procps in debian so sysctl.conf exists [\#282](https://github.com/dev-sec/ansible-os-hardening/pull/282) [[patch](https://github.com/dev-sec/ansible-os-hardening/labels/patch)] ([rndmh3ro](https://github.com/rndmh3ro))

## [6.0.3](https://github.com/dev-sec/ansible-os-hardening/tree/6.0.3) (2020-06-06)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/6.0.2...6.0.3)

**Implemented enhancements:**

- unify changelog and release actions [\#279](https://github.com/dev-sec/ansible-os-hardening/pull/279) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[patch](https://github.com/dev-sec/ansible-os-hardening/labels/patch)] ([rndmh3ro](https://github.com/rndmh3ro))

## [6.0.2](https://github.com/dev-sec/ansible-os-hardening/tree/6.0.2) (2020-06-02)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/6.0.1...6.0.2)

**Implemented enhancements:**

- purge insecure packages [\#275](https://github.com/dev-sec/ansible-os-hardening/pull/275) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[minor](https://github.com/dev-sec/ansible-os-hardening/labels/minor)] ([chris-rock](https://github.com/chris-rock))

## [6.0.1](https://github.com/dev-sec/ansible-os-hardening/tree/6.0.1) (2020-05-09)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/6.0.0...6.0.1)

**Implemented enhancements:**

- add changelog and release workflow [\#271](https://github.com/dev-sec/ansible-os-hardening/pull/271) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[patch](https://github.com/dev-sec/ansible-os-hardening/labels/patch)] ([rndmh3ro](https://github.com/rndmh3ro))
- github action for changelog generation [\#270](https://github.com/dev-sec/ansible-os-hardening/pull/270) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[patch](https://github.com/dev-sec/ansible-os-hardening/labels/patch)] ([rndmh3ro](https://github.com/rndmh3ro))

## [6.0.0](https://github.com/dev-sec/ansible-os-hardening/tree/6.0.0) (2020-05-05)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/5.2.1...6.0.0)

**Implemented enhancements:**

- Configure audit=1 for more accurate auid auditing [\#253](https://github.com/dev-sec/ansible-os-hardening/issues/253) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)]
- Add Debian Buster support for ansible-os-hardening [\#233](https://github.com/dev-sec/ansible-os-hardening/issues/233) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[hacktoberfest](https://github.com/dev-sec/ansible-os-hardening/labels/hacktoberfest)]
- Add CentOS 8 support for ansible-os-hardening [\#232](https://github.com/dev-sec/ansible-os-hardening/issues/232) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[hacktoberfest](https://github.com/dev-sec/ansible-os-hardening/labels/hacktoberfest)]
- Add selinux configuration [\#154](https://github.com/dev-sec/ansible-os-hardening/issues/154) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[hacktoberfest](https://github.com/dev-sec/ansible-os-hardening/labels/hacktoberfest)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]
- Make useradd defaults in login.defs dependent on OS [\#266](https://github.com/dev-sec/ansible-os-hardening/pull/266) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([aisbergg](https://github.com/aisbergg))
- Add kernel hardening parameters from Tails and CIS Benchmark [\#263](https://github.com/dev-sec/ansible-os-hardening/pull/263) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([kravietz](https://github.com/kravietz))
- add ansible-lint [\#262](https://github.com/dev-sec/ansible-os-hardening/pull/262) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Remove trailing space [\#261](https://github.com/dev-sec/ansible-os-hardening/pull/261) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([kravietz](https://github.com/kravietz))
- Add kernel parameter information to README [\#259](https://github.com/dev-sec/ansible-os-hardening/pull/259) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([jaredledvina](https://github.com/jaredledvina))
- Remove trailing whitespaces \(ansible-lint 201\) [\#254](https://github.com/dev-sec/ansible-os-hardening/pull/254) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([kravietz](https://github.com/kravietz))
- Standardize the var ordering [\#251](https://github.com/dev-sec/ansible-os-hardening/pull/251) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([dustinmiller1337](https://github.com/dustinmiller1337))
- Add intial support for OpenSUSE [\#250](https://github.com/dev-sec/ansible-os-hardening/pull/250) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([dustinmiller1337](https://github.com/dustinmiller1337))
- Make max_log_file_action for auditd configurable [\#246](https://github.com/dev-sec/ansible-os-hardening/pull/246) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([jandd](https://github.com/jandd))
- Add exception in sysctl task [\#240](https://github.com/dev-sec/ansible-os-hardening/pull/240) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([ghost](https://github.com/ghost))
- Fedora - Use new auto ansible_python_interpreter for dnf [\#239](https://github.com/dev-sec/ansible-os-hardening/pull/239) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([jaredledvina](https://github.com/jaredledvina))
- add test support for CentOS8 [\#237](https://github.com/dev-sec/ansible-os-hardening/pull/237) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([yeoldegrove](https://github.com/yeoldegrove))
- Support configuring SELinux and default to enforcing [\#236](https://github.com/dev-sec/ansible-os-hardening/pull/236) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([jaredledvina](https://github.com/jaredledvina))
- Add test support for debian buster [\#234](https://github.com/dev-sec/ansible-os-hardening/pull/234) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([123Haynes](https://github.com/123Haynes))
- Changed local var name to a less common one [\#231](https://github.com/dev-sec/ansible-os-hardening/pull/231) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rgarrigue](https://github.com/rgarrigue))
- Use ansible facts for vars [\#226](https://github.com/dev-sec/ansible-os-hardening/pull/226) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([joshuatalb](https://github.com/joshuatalb))

**Fixed bugs:**

- /etc/login.defs alters centos 7/8 default values [\#265](https://github.com/dev-sec/ansible-os-hardening/issues/265) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]
- Invalid Conditionals in user_accounts.yml [\#255](https://github.com/dev-sec/ansible-os-hardening/issues/255) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- `auth-system` related files are created for non-RHEL systems \(e.g. Debian\) [\#247](https://github.com/dev-sec/ansible-os-hardening/issues/247) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- NSA website links are stale [\#227](https://github.com/dev-sec/ansible-os-hardening/issues/227) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] [[hacktoberfest](https://github.com/dev-sec/ansible-os-hardening/labels/hacktoberfest)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]
- Running ansible on python3 throughs "TypeError: '\<=' not supported between instances of 'str' and 'int'" [\#223](https://github.com/dev-sec/ansible-os-hardening/issues/223) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- \[lots of\] deprecation warnings in Ansible 2.8 [\#221](https://github.com/dev-sec/ansible-os-hardening/issues/221) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]
- Add a "don't fail on error" switch ? [\#148](https://github.com/dev-sec/ansible-os-hardening/issues/148) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- Addressing issue \#255 [\#258](https://github.com/dev-sec/ansible-os-hardening/pull/258) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([ljkimmel](https://github.com/ljkimmel))
- Fix \#247, cleanup conditions [\#248](https://github.com/dev-sec/ansible-os-hardening/pull/248) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([fernandezcuesta](https://github.com/fernandezcuesta))
- Fix error on applying the sysctl vars on containers [\#243](https://github.com/dev-sec/ansible-os-hardening/pull/243) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([ghost](https://github.com/ghost))
- Update location of NSA RHEL 5 Guide [\#235](https://github.com/dev-sec/ansible-os-hardening/pull/235) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([jaredledvina](https://github.com/jaredledvina))

## [5.2.1](https://github.com/dev-sec/ansible-os-hardening/tree/5.2.1) (2019-06-09)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/5.2.0...5.2.1)

**Implemented enhancements:**

- Fix deprecation warnings in Ansible 2.8 [\#224](https://github.com/dev-sec/ansible-os-hardening/pull/224) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([Normo](https://github.com/Normo))
- add docs to find-task in minimize access. fix \#219 [\#220](https://github.com/dev-sec/ansible-os-hardening/pull/220) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))

**Fixed bugs:**

- `squash_actions` deprecation warning [\#218](https://github.com/dev-sec/ansible-os-hardening/issues/218) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]

## [5.2.0](https://github.com/dev-sec/ansible-os-hardening/tree/5.2.0) (2019-05-04)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/5.1.0...5.2.0)

**Implemented enhancements:**

- Speed up "minimize access on found files" task [\#208](https://github.com/dev-sec/ansible-os-hardening/issues/208) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)]
- Fedora support? [\#163](https://github.com/dev-sec/ansible-os-hardening/issues/163) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]
- remove eol'd OS and add new [\#217](https://github.com/dev-sec/ansible-os-hardening/pull/217) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Add note about docker under warning [\#214](https://github.com/dev-sec/ansible-os-hardening/pull/214) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([ChrisMcKee](https://github.com/ChrisMcKee))
- change minimize access tasks to speed them up [\#209](https://github.com/dev-sec/ansible-os-hardening/pull/209) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Added fedora support [\#206](https://github.com/dev-sec/ansible-os-hardening/pull/206) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([jonaswre](https://github.com/jonaswre))
- Pass package list directly to apt and yum modules without using with_items loop [\#200](https://github.com/dev-sec/ansible-os-hardening/pull/200) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([Normo](https://github.com/Normo))

**Fixed bugs:**

- login.defs.j2 template: ENV_PATH is missing ':' before variable substitution [\#202](https://github.com/dev-sec/ansible-os-hardening/issues/202) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- 'sysctl_rhel_config' is undefined [\#167](https://github.com/dev-sec/ansible-os-hardening/issues/167) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- RHEL 7.4: Too many setuid bits removed [\#140](https://github.com/dev-sec/ansible-os-hardening/issues/140) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]
- Fix typo [\#212](https://github.com/dev-sec/ansible-os-hardening/pull/212) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([ruslo](https://github.com/ruslo))
- Update modprobe to 0644 [\#211](https://github.com/dev-sec/ansible-os-hardening/pull/211) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([joshuatalb](https://github.com/joshuatalb))
- Test Kitchen Vagrant Fixes [\#210](https://github.com/dev-sec/ansible-os-hardening/pull/210) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([joshuatalb](https://github.com/joshuatalb))
- \[readme\] Update documentation link [\#207](https://github.com/dev-sec/ansible-os-hardening/pull/207) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([pmav99](https://github.com/pmav99))
- fix ansible lint remarks [\#204](https://github.com/dev-sec/ansible-os-hardening/pull/204) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([rndmh3ro](https://github.com/rndmh3ro))
- add colon to user env paths - fix \#202 [\#203](https://github.com/dev-sec/ansible-os-hardening/pull/203) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([rndmh3ro](https://github.com/rndmh3ro))
- Fix errors produced by ansible-lint [\#159](https://github.com/dev-sec/ansible-os-hardening/pull/159) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([zbrojny120](https://github.com/zbrojny120))

## [5.1.0](https://github.com/dev-sec/ansible-os-hardening/tree/5.1.0) (2018-10-17)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/5.0.0...5.1.0)

**Implemented enhancements:**

- add ubuntu 1804 support [\#196](https://github.com/dev-sec/ansible-os-hardening/pull/196) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- add option to disable auditd [\#192](https://github.com/dev-sec/ansible-os-hardening/pull/192) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))

**Fixed bugs:**

- auditd causing v5.0 to fail on unpriviledged LXC's [\#191](https://github.com/dev-sec/ansible-os-hardening/issues/191) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- Setting os_security_users_allow has no effect [\#175](https://github.com/dev-sec/ansible-os-hardening/issues/175) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- add /usr/bin/su to suid_guid whitelist [\#199](https://github.com/dev-sec/ansible-os-hardening/pull/199) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([ccolic](https://github.com/ccolic))
- ensure that permissions to su-binary are not restricted to root user and group only, if os_security_users_allow contains the value change_user [\#197](https://github.com/dev-sec/ansible-os-hardening/pull/197) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([szEvEz](https://github.com/szEvEz))

## [5.0.0](https://github.com/dev-sec/ansible-os-hardening/tree/5.0.0) (2018-09-02)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/4.3.0...5.0.0)

**Implemented enhancements:**

- Warning about "include" for tasks for ansible-playbook 2.4.0 \(devel f0a5854e39\) [\#131](https://github.com/dev-sec/ansible-os-hardening/issues/131) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)]
- fix problems with efi and vfat [\#190](https://github.com/dev-sec/ansible-os-hardening/pull/190) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- added os_hardening_enabled flag [\#186](https://github.com/dev-sec/ansible-os-hardening/pull/186) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([jcheroske](https://github.com/jcheroske))
- add amazon run opts to travis [\#183](https://github.com/dev-sec/ansible-os-hardening/pull/183) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- use package instead of yum and apt [\#180](https://github.com/dev-sec/ansible-os-hardening/pull/180) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- add oracle7 to travis [\#178](https://github.com/dev-sec/ansible-os-hardening/pull/178) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- fix wrong permissions passwdqc \#170 [\#176](https://github.com/dev-sec/ansible-os-hardening/pull/176) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- ipv4 forwarding comment is inconsistent with example [\#174](https://github.com/dev-sec/ansible-os-hardening/pull/174) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([carchrae](https://github.com/carchrae))
- Rename pam_passwdqd.j2 to pam_passwdqc.j2 [\#172](https://github.com/dev-sec/ansible-os-hardening/pull/172) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([martinbydefault](https://github.com/martinbydefault))
- Use package state 'present' since 'installed' is deprecated [\#168](https://github.com/dev-sec/ansible-os-hardening/pull/168) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([Normo](https://github.com/Normo))
- Update syntax to Ansible 2.4 [\#161](https://github.com/dev-sec/ansible-os-hardening/pull/161) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([thomasjpfan](https://github.com/thomasjpfan))
- add amazon linux testing [\#160](https://github.com/dev-sec/ansible-os-hardening/pull/160) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Add support for Amazon Linux [\#158](https://github.com/dev-sec/ansible-os-hardening/pull/158) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([woneill](https://github.com/woneill))
- install and configure auditd - fix inspec package-08 [\#144](https://github.com/dev-sec/ansible-os-hardening/pull/144) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Remove deprecated include for static tasks and use instead import_tasks fix \#131 [\#132](https://github.com/dev-sec/ansible-os-hardening/pull/132) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([HelioCampos](https://github.com/HelioCampos))

**Fixed bugs:**

- minimize_access: maximum recursion depth exceeded on Ansible 2.5 [\#171](https://github.com/dev-sec/ansible-os-hardening/issues/171) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- wrong permissions passwdqc [\#170](https://github.com/dev-sec/ansible-os-hardening/issues/170) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- Update deprecated `include` statements [\#166](https://github.com/dev-sec/ansible-os-hardening/issues/166) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- Strongly recommend against disabling vfat by default [\#162](https://github.com/dev-sec/ansible-os-hardening/issues/162) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- System completely unresponsive after role execution [\#145](https://github.com/dev-sec/ansible-os-hardening/issues/145) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- do not install passwdqc on amazon linux [\#189](https://github.com/dev-sec/ansible-os-hardening/pull/189) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([rndmh3ro](https://github.com/rndmh3ro))
- add back run opts for debian 8 in travis [\#184](https://github.com/dev-sec/ansible-os-hardening/pull/184) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([rndmh3ro](https://github.com/rndmh3ro))
- Fix core dump config file creation when core dumps are disabled [\#182](https://github.com/dev-sec/ansible-os-hardening/pull/182) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([Normo](https://github.com/Normo))
- change minimize access method [\#181](https://github.com/dev-sec/ansible-os-hardening/pull/181) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([rndmh3ro](https://github.com/rndmh3ro))

## [4.3.0](https://github.com/dev-sec/ansible-os-hardening/tree/4.3.0) (2018-01-03)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/4.3.1...4.3.0)

**Implemented enhancements:**

- Update some RH settings in this role [\#155](https://github.com/dev-sec/ansible-os-hardening/issues/155) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)]
- Removal of core dump hardening configuration if core dumps are allowed [\#129](https://github.com/dev-sec/ansible-os-hardening/issues/129) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]
- Don't create home for system accounts [\#156](https://github.com/dev-sec/ansible-os-hardening/pull/156) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([oakey-b1](https://github.com/oakey-b1))
- Prevent disabling of filesystems via whitelist [\#153](https://github.com/dev-sec/ansible-os-hardening/pull/153) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([manuelprinz](https://github.com/manuelprinz))
- Add kernel hardening settings from Ubuntu /etc/sysctl.d [\#150](https://github.com/dev-sec/ansible-os-hardening/pull/150) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([kravietz](https://github.com/kravietz))
- Removal of core dump hardening configuration if core dumps are allowed [\#146](https://github.com/dev-sec/ansible-os-hardening/pull/146) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([martinbydefault](https://github.com/martinbydefault))
- add missing sysctl parameter [\#143](https://github.com/dev-sec/ansible-os-hardening/pull/143) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] [[in progress](https://github.com/dev-sec/ansible-os-hardening/labels/in%20progress)] ([rndmh3ro](https://github.com/rndmh3ro))
- update readme [\#139](https://github.com/dev-sec/ansible-os-hardening/pull/139) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))

**Fixed bugs:**

- bug in ufw.j2 template [\#151](https://github.com/dev-sec/ansible-os-hardening/issues/151) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- replace single ticks with double ticks. fix \#151 [\#152](https://github.com/dev-sec/ansible-os-hardening/pull/152) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([rndmh3ro](https://github.com/rndmh3ro))
- fixed tag [\#149](https://github.com/dev-sec/ansible-os-hardening/pull/149) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([martinbydefault](https://github.com/martinbydefault))

**Closed issues:**

- ansible hardening fails on ubuntu 16.04 with msg": "ERROR! 'sysctl_rhel_config' is undefined [\#147](https://github.com/dev-sec/ansible-os-hardening/issues/147)
- Enhancement: Test with TestInfra and Molecule [\#128](https://github.com/dev-sec/ansible-os-hardening/issues/128)

**Merged pull requests:**

- move defaults to os-specific vars [\#157](https://github.com/dev-sec/ansible-os-hardening/pull/157) ([rndmh3ro](https://github.com/rndmh3ro))

## [4.3.1](https://github.com/dev-sec/ansible-os-hardening/tree/4.3.1) (2017-09-13)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/4.2.0...4.3.1)

**Fixed bugs:**

- os_security_kernel_enable_sysrq is not implemented [\#115](https://github.com/dev-sec/ansible-os-hardening/issues/115) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]

## [4.2.0](https://github.com/dev-sec/ansible-os-hardening/tree/4.2.0) (2017-08-08)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/4.1.0...4.2.0)

**Implemented enhancements:**

- add modprobe template, control os-10 [\#138](https://github.com/dev-sec/ansible-os-hardening/pull/138) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- new task for delete netrc files, control os-09 [\#137](https://github.com/dev-sec/ansible-os-hardening/pull/137) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- add passwd task, control os-03 [\#136](https://github.com/dev-sec/ansible-os-hardening/pull/136) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- remove prelink package, control package-09 [\#135](https://github.com/dev-sec/ansible-os-hardening/pull/135) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- style update [\#134](https://github.com/dev-sec/ansible-os-hardening/pull/134) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Fix ansible.cfg and use comment filter [\#130](https://github.com/dev-sec/ansible-os-hardening/pull/130) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([fazlearefin](https://github.com/fazlearefin))

**Fixed bugs:**

- Why is rsync removed? [\#141](https://github.com/dev-sec/ansible-os-hardening/issues/141) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- playbook makes OS undetectable [\#124](https://github.com/dev-sec/ansible-os-hardening/issues/124) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- Centos7/RHEL7: Exec shield is enabled by default and not manageable anymore by sysctl.conf [\#118](https://github.com/dev-sec/ansible-os-hardening/issues/118) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- Remove rsync from package blacklist [\#142](https://github.com/dev-sec/ansible-os-hardening/pull/142) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([duk3luk3](https://github.com/duk3luk3))

**Merged pull requests:**

- remove execshield sysctl-parameter on rhel7 [\#119](https://github.com/dev-sec/ansible-os-hardening/pull/119) ([rndmh3ro](https://github.com/rndmh3ro))

## [4.1.0](https://github.com/dev-sec/ansible-os-hardening/tree/4.1.0) (2017-06-27)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/4.0.0...4.1.0)

**Fixed bugs:**

- Change system accounts not on the user provided ignore-list items are not JSON serializable [\#125](https://github.com/dev-sec/ansible-os-hardening/issues/125) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- Could not find gem 'ruby \(\>= 2.1.0\)' [\#116](https://github.com/dev-sec/ansible-os-hardening/issues/116) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- The task sysctl fails when /etc/initramfs-tools is not present [\#111](https://github.com/dev-sec/ansible-os-hardening/issues/111) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- Deprecation warning always_run [\#103](https://github.com/dev-sec/ansible-os-hardening/issues/103) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]

**Closed issues:**

- Enhancement: Pin python dependencies for development and testing [\#127](https://github.com/dev-sec/ansible-os-hardening/issues/127)
- Update readme to include baselines [\#122](https://github.com/dev-sec/ansible-os-hardening/issues/122)

**Merged pull requests:**

- Converts set to JSON-serializable list [\#126](https://github.com/dev-sec/ansible-os-hardening/pull/126) ([pestaa](https://github.com/pestaa))
- add more sysctl settings, allow overwriting [\#120](https://github.com/dev-sec/ansible-os-hardening/pull/120) ([rndmh3ro](https://github.com/rndmh3ro))

## [4.0.0](https://github.com/dev-sec/ansible-os-hardening/tree/4.0.0) (2017-03-14)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/3.2.0...4.0.0)

**Implemented enhancements:**

- Description of the Ansible roles of dev-sec says "This Ansible playbook" [\#97](https://github.com/dev-sec/ansible-os-hardening/issues/97) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)]
- install initramfs-tools [\#114](https://github.com/dev-sec/ansible-os-hardening/pull/114) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- omit empty variables [\#106](https://github.com/dev-sec/ansible-os-hardening/pull/106) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))

**Fixed bugs:**

- The role fails when conditionally included [\#105](https://github.com/dev-sec/ansible-os-hardening/issues/105) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]

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

- CentOS 7 selinux dependencies [\#102](https://github.com/dev-sec/ansible-os-hardening/issues/102) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- ubuntu xenial warning during activate gpg-check for yum-repos [\#99](https://github.com/dev-sec/ansible-os-hardening/issues/99) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- rhel_system_auth.j2 is still using pam_passwdqc.so for CentOS 7 [\#98](https://github.com/dev-sec/ansible-os-hardening/issues/98) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- Enable pam_pwquality in rhel-family \> 7 [\#73](https://github.com/dev-sec/ansible-os-hardening/issues/73) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]
- "irc" user always changed after reboot [\#53](https://github.com/dev-sec/ansible-os-hardening/issues/53) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]

**Merged pull requests:**

- update template [\#101](https://github.com/dev-sec/ansible-os-hardening/pull/101) ([rndmh3ro](https://github.com/rndmh3ro))
- fix deprecation warning for undefined error. \#99 [\#100](https://github.com/dev-sec/ansible-os-hardening/pull/100) ([rndmh3ro](https://github.com/rndmh3ro))
- add rhel7 pam_pwquality. fix \#73 [\#94](https://github.com/dev-sec/ansible-os-hardening/pull/94) ([rndmh3ro](https://github.com/rndmh3ro))

## [3.1.0](https://github.com/dev-sec/ansible-os-hardening/tree/3.1.0) (2016-08-03)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/3.1...3.1.0)

## [3.1](https://github.com/dev-sec/ansible-os-hardening/tree/3.1) (2016-07-27)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/3.0.0...3.1)

**Implemented enhancements:**

- Supports --check mode [\#93](https://github.com/dev-sec/ansible-os-hardening/pull/93) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([conorsch](https://github.com/conorsch))
- Adds support for CentOS 7 [\#91](https://github.com/dev-sec/ansible-os-hardening/pull/91) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([conorsch](https://github.com/conorsch))
- Docker [\#90](https://github.com/dev-sec/ansible-os-hardening/pull/90) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- debian 8 support [\#88](https://github.com/dev-sec/ansible-os-hardening/pull/88) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Ufw manage defaults [\#85](https://github.com/dev-sec/ansible-os-hardening/pull/85) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([fitz123](https://github.com/fitz123))
- replace ignore_errors to failed_when to supress ugly error warnings [\#81](https://github.com/dev-sec/ansible-os-hardening/pull/81) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([fitz123](https://github.com/fitz123))
- fix bare variables usage for loops [\#79](https://github.com/dev-sec/ansible-os-hardening/pull/79) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([fitz123](https://github.com/fitz123))

**Fixed bugs:**

- Centos 7.1 fails at \[Change various sysctl-settings on rhel-hosts...\] [\#74](https://github.com/dev-sec/ansible-os-hardening/issues/74) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)]
- Hardening fails on Centos 7.1 at task 'minimize access' [\#71](https://github.com/dev-sec/ansible-os-hardening/issues/71) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] [[help wanted](https://github.com/dev-sec/ansible-os-hardening/labels/help%20wanted)]

**Closed issues:**

- Permissions on /etc/shadow can lock out GUI users [\#86](https://github.com/dev-sec/ansible-os-hardening/issues/86)
- network related sysctl rewritten by ufw in ubuntu [\#82](https://github.com/dev-sec/ansible-os-hardening/issues/82)
- ansible \>= 2.0 complains: Using bare variables is deprecated [\#78](https://github.com/dev-sec/ansible-os-hardening/issues/78)

**Merged pull requests:**

- Fix a formatting issue in readme. [\#92](https://github.com/dev-sec/ansible-os-hardening/pull/92) ([vivekagr](https://github.com/vivekagr))
- Permits overriding permissions on /etc/shadow [\#89](https://github.com/dev-sec/ansible-os-hardening/pull/89) ([conorsch](https://github.com/conorsch))

## [3.0.0](https://github.com/dev-sec/ansible-os-hardening/tree/3.0.0) (2016-03-13)

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/2.0.0...3.0.0)

**Implemented enhancements:**

- update platforms in meta-file [\#69](https://github.com/dev-sec/ansible-os-hardening/pull/69) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- add webhook for ansible galaxy [\#68](https://github.com/dev-sec/ansible-os-hardening/pull/68) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Move sysctl vars to defaults [\#67](https://github.com/dev-sec/ansible-os-hardening/pull/67) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- make sys_uid and sys_gid configurable [\#62](https://github.com/dev-sec/ansible-os-hardening/pull/62) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Ansible 2.0 support [\#59](https://github.com/dev-sec/ansible-os-hardening/pull/59) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- use inspec as test framework [\#58](https://github.com/dev-sec/ansible-os-hardening/pull/58) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([chris-rock](https://github.com/chris-rock))
- Packages as attributes [\#57](https://github.com/dev-sec/ansible-os-hardening/pull/57) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Change categories to tags for upcoming ansible 2.0 [\#56](https://github.com/dev-sec/ansible-os-hardening/pull/56) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- Add SINGLE and PROMPT parameters. [\#55](https://github.com/dev-sec/ansible-os-hardening/pull/55) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([rndmh3ro](https://github.com/rndmh3ro))
- add changelog generator [\#54](https://github.com/dev-sec/ansible-os-hardening/pull/54) [[enhancement](https://github.com/dev-sec/ansible-os-hardening/labels/enhancement)] ([chris-rock](https://github.com/chris-rock))

**Fixed bugs:**

- Updates "tags" parameters on includes in main.yml [\#66](https://github.com/dev-sec/ansible-os-hardening/pull/66) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([conorsch](https://github.com/conorsch))
- Suid set def var, fix \#64 [\#63](https://github.com/dev-sec/ansible-os-hardening/pull/63) [[bug](https://github.com/dev-sec/ansible-os-hardening/labels/bug)] ([rndmh3ro](https://github.com/rndmh3ro))

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

[Full Changelog](https://github.com/dev-sec/ansible-os-hardening/compare/a9591764206b79a4ed324bb8576151ebac0127b1...1.0.0)

**Closed issues:**

- ansible-os-hardening/tasks/minimize_access.yml [\#38](https://github.com/dev-sec/ansible-os-hardening/issues/38)
- Role configuration. vars/main.yml? [\#34](https://github.com/dev-sec/ansible-os-hardening/issues/34)
- Sysctl reloading [\#18](https://github.com/dev-sec/ansible-os-hardening/issues/18)
- Add conditions for disabling of ip forwarding [\#15](https://github.com/dev-sec/ansible-os-hardening/issues/15)
- Disable System Accounts [\#6](https://github.com/dev-sec/ansible-os-hardening/issues/6)

**Merged pull requests:**

- Update kitchen-ansible, remove separate debian install [\#40](https://github.com/dev-sec/ansible-os-hardening/pull/40) ([rndmh3ro](https://github.com/rndmh3ro))
- Add mode to su-binary task. Fix \#38 [\#39](https://github.com/dev-sec/ansible-os-hardening/pull/39) ([rndmh3ro](https://github.com/rndmh3ro))
- update common kitchen.yml platforms \(ansible\), kitchen_debian.yml platforms \(ansible\) [\#37](https://github.com/dev-sec/ansible-os-hardening/pull/37) ([chris-rock](https://github.com/chris-rock))
- Change oneliner if-statements to be more readable [\#36](https://github.com/dev-sec/ansible-os-hardening/pull/36) ([rndmh3ro](https://github.com/rndmh3ro))
- Separate system-vars from editable vars. Fix \#34 [\#35](https://github.com/dev-sec/ansible-os-hardening/pull/35) ([rndmh3ro](https://github.com/rndmh3ro))
- Create limits.d-directory if it does not exist. [\#33](https://github.com/dev-sec/ansible-os-hardening/pull/33) ([rndmh3ro](https://github.com/rndmh3ro))
- Add correct CONTRIB-file [\#32](https://github.com/dev-sec/ansible-os-hardening/pull/32) ([rndmh3ro](https://github.com/rndmh3ro))
- Add Ansible Galaxy badge [\#31](https://github.com/dev-sec/ansible-os-hardening/pull/31) ([rndmh3ro](https://github.com/rndmh3ro))
- Update readme, todo, changelog, vars [\#30](https://github.com/dev-sec/ansible-os-hardening/pull/30) ([rndmh3ro](https://github.com/rndmh3ro))
- List-cleanup and follow symlinks added [\#29](https://github.com/dev-sec/ansible-os-hardening/pull/29) ([rndmh3ro](https://github.com/rndmh3ro))
- Add module configuration [\#28](https://github.com/dev-sec/ansible-os-hardening/pull/28) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix two sysctl-settings [\#27](https://github.com/dev-sec/ansible-os-hardening/pull/27) ([rndmh3ro](https://github.com/rndmh3ro))
- Add meta-files for Ansible Galaxy [\#26](https://github.com/dev-sec/ansible-os-hardening/pull/26) ([rndmh3ro](https://github.com/rndmh3ro))
- Disable System Accounts. Fix \#6 [\#25](https://github.com/dev-sec/ansible-os-hardening/pull/25) ([rndmh3ro](https://github.com/rndmh3ro))
- Use changed_when to avoid changed tasks [\#24](https://github.com/dev-sec/ansible-os-hardening/pull/24) ([rndmh3ro](https://github.com/rndmh3ro))
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

\* _This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)_
