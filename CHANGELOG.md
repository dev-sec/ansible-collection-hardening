# Changelog

## [6.2.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/6.2.0) (2019-08-07)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/6.1.3...6.2.0)

**Implemented enhancements:**

- added support for `ssh\_server\_match\_address` \(\#230\) [\#231](https://github.com/dev-sec/ansible-ssh-hardening/pull/231) ([MatthiasLohr](https://github.com/MatthiasLohr))

**Closed issues:**

- Add new option ssh\_server\_match\_address [\#230](https://github.com/dev-sec/ansible-ssh-hardening/issues/230)

## [6.1.3](https://github.com/dev-sec/ansible-ssh-hardening/tree/6.1.3) (2019-06-09)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/6.1.2...6.1.3)

**Implemented enhancements:**

- Fix squash\_actions deprecation in test playbooks [\#228](https://github.com/dev-sec/ansible-ssh-hardening/pull/228) ([Normo](https://github.com/Normo))
- Fix deprecation warnings in Ansible 2.8 [\#227](https://github.com/dev-sec/ansible-ssh-hardening/pull/227) ([Normo](https://github.com/Normo))

**Fixed bugs:**

- deprecation warnings in Ansible 2.8 [\#226](https://github.com/dev-sec/ansible-ssh-hardening/issues/226)

## [6.1.2](https://github.com/dev-sec/ansible-ssh-hardening/tree/6.1.2) (2019-05-17)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/6.1.1...6.1.2)

**Fixed bugs:**

- sshd\_custom\_options used in ssh\_config generation [\#224](https://github.com/dev-sec/ansible-ssh-hardening/issues/224)

**Merged pull requests:**

- use correct variable ssh\_custom\_options in ssh\_config template [\#225](https://github.com/dev-sec/ansible-ssh-hardening/pull/225) ([rndmh3ro](https://github.com/rndmh3ro))

## [6.1.1](https://github.com/dev-sec/ansible-ssh-hardening/tree/6.1.1) (2019-05-07)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/6.1.0...6.1.1)

**Fixed bugs:**

- Missing indent for `ChrootDirectory` in `Match Group sftponly` [\#221](https://github.com/dev-sec/ansible-ssh-hardening/issues/221)

**Merged pull requests:**

- fix indentation for matches [\#222](https://github.com/dev-sec/ansible-ssh-hardening/pull/222) ([rndmh3ro](https://github.com/rndmh3ro))

## [6.1.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/6.1.0) (2019-05-04)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/6.0.0...6.1.0)

**Implemented enhancements:**

- PermitRootLogin yes [\#190](https://github.com/dev-sec/ansible-ssh-hardening/issues/190)
- Match Group' in configuration but 'user' not in connection test specification [\#188](https://github.com/dev-sec/ansible-ssh-hardening/issues/188)
- Allow custom values [\#175](https://github.com/dev-sec/ansible-ssh-hardening/issues/175)
- use selinux fact to check if selinux is used [\#220](https://github.com/dev-sec/ansible-ssh-hardening/pull/220) ([rndmh3ro](https://github.com/rndmh3ro))
- Remove eol os and add fedora [\#218](https://github.com/dev-sec/ansible-ssh-hardening/pull/218) ([rndmh3ro](https://github.com/rndmh3ro))
- document and move custom variables [\#217](https://github.com/dev-sec/ansible-ssh-hardening/pull/217) ([rndmh3ro](https://github.com/rndmh3ro))
- fix: allow other ssh ports using selinux [\#214](https://github.com/dev-sec/ansible-ssh-hardening/pull/214) ([guilieb](https://github.com/guilieb))
- Make ansible-lint happy [\#204](https://github.com/dev-sec/ansible-ssh-hardening/pull/204) ([alexclear](https://github.com/alexclear))
- Fix ssh and sshd config files to satisfy inspec reqs on all Testkitchen setups [\#203](https://github.com/dev-sec/ansible-ssh-hardening/pull/203) ([alexclear](https://github.com/alexclear))
- enable ssh 7.7p1 support [\#202](https://github.com/dev-sec/ansible-ssh-hardening/pull/202) ([rndmh3ro](https://github.com/rndmh3ro))
- Removed DEPRECATION WARNING for apt, using list instead of with\_items [\#201](https://github.com/dev-sec/ansible-ssh-hardening/pull/201) ([jonaswre](https://github.com/jonaswre))

**Fixed bugs:**

- Using more than one rule in a Group or User Match block? [\#207](https://github.com/dev-sec/ansible-ssh-hardening/issues/207)
- fix multiple match rules not working \#207 [\#208](https://github.com/dev-sec/ansible-ssh-hardening/pull/208) ([rndmh3ro](https://github.com/rndmh3ro))

## [6.0.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/6.0.0) (2018-11-18)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/5.0.0...6.0.0)

**Implemented enhancements:**

- Ubuntu 18.04 support [\#182](https://github.com/dev-sec/ansible-ssh-hardening/issues/182)
- Update opensshd.conf.js [\#196](https://github.com/dev-sec/ansible-ssh-hardening/pull/196) ([ikr0m](https://github.com/ikr0m))

**Fixed bugs:**

- GSSAPI support broken. Can't be enabled. [\#192](https://github.com/dev-sec/ansible-ssh-hardening/issues/192)
- Unsupported option "rhostsrsaauthentication" "rsaauthentication" [\#184](https://github.com/dev-sec/ansible-ssh-hardening/issues/184)
- Weak kex are controlled by wrong variable ? [\#174](https://github.com/dev-sec/ansible-ssh-hardening/issues/174)
- Can't connect to server by SSH after applying this role [\#115](https://github.com/dev-sec/ansible-ssh-hardening/issues/115)

**Closed issues:**

- Support StreamLocalBindUnlink [\#197](https://github.com/dev-sec/ansible-ssh-hardening/issues/197)
- Add molecule testing [\#183](https://github.com/dev-sec/ansible-ssh-hardening/issues/183)

**Merged pull requests:**

- Support for custom configuration [\#199](https://github.com/dev-sec/ansible-ssh-hardening/pull/199) ([MatthiasLohr](https://github.com/MatthiasLohr))
- parameterize PermitRootLogin [\#195](https://github.com/dev-sec/ansible-ssh-hardening/pull/195) ([rndmh3ro](https://github.com/rndmh3ro))
- set 'GSSAPIAuthentication yes' if variable 'ssh\_gssapi\_support' is set to 'true' [\#194](https://github.com/dev-sec/ansible-ssh-hardening/pull/194) ([szEvEz](https://github.com/szEvEz))
- Use ansible version compare module [\#187](https://github.com/dev-sec/ansible-ssh-hardening/pull/187) ([Neophy7e](https://github.com/Neophy7e))
- add ubuntu 18.04 support [\#186](https://github.com/dev-sec/ansible-ssh-hardening/pull/186) ([rndmh3ro](https://github.com/rndmh3ro))

## [5.0.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/5.0.0) (2018-09-16)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/4.4.0...5.0.0)

**Implemented enhancements:**

- Fixing the broken Ansible dependency mechanism [\#176](https://github.com/dev-sec/ansible-ssh-hardening/issues/176)
- Include new baseline-tests [\#161](https://github.com/dev-sec/ansible-ssh-hardening/issues/161)
- GlobalKnownHostsFile missing from ssh\_config [\#155](https://github.com/dev-sec/ansible-ssh-hardening/issues/155)
- Options not compatible with OpenSSH server 7.6 [\#151](https://github.com/dev-sec/ansible-ssh-hardening/issues/151)
- Kitchen travis [\#180](https://github.com/dev-sec/ansible-ssh-hardening/pull/180) ([rndmh3ro](https://github.com/rndmh3ro))
- update config of kex, macs, ciphers [\#179](https://github.com/dev-sec/ansible-ssh-hardening/pull/179) ([rndmh3ro](https://github.com/rndmh3ro))
- add debian 9 and a comment [\#178](https://github.com/dev-sec/ansible-ssh-hardening/pull/178) ([rndmh3ro](https://github.com/rndmh3ro))
- Dependency flag [\#177](https://github.com/dev-sec/ansible-ssh-hardening/pull/177) ([jcheroske](https://github.com/jcheroske))
- Travis [\#173](https://github.com/dev-sec/ansible-ssh-hardening/pull/173) ([rndmh3ro](https://github.com/rndmh3ro))
- OpenBSD Support [\#171](https://github.com/dev-sec/ansible-ssh-hardening/pull/171) ([jbronn](https://github.com/jbronn))
- Implement disabling chroot for sftp [\#166](https://github.com/dev-sec/ansible-ssh-hardening/pull/166) ([towo](https://github.com/towo))
- New tests [\#163](https://github.com/dev-sec/ansible-ssh-hardening/pull/163) ([rndmh3ro](https://github.com/rndmh3ro))
- yaml-lint update, refactor tasks [\#162](https://github.com/dev-sec/ansible-ssh-hardening/pull/162) ([rndmh3ro](https://github.com/rndmh3ro))
- Handle a few deprecated OpenSSH options [\#160](https://github.com/dev-sec/ansible-ssh-hardening/pull/160) ([ageis](https://github.com/ageis))
- Added support for TrustedUserCAKeys and AuthorizedPrincipalsFile. [\#157](https://github.com/dev-sec/ansible-ssh-hardening/pull/157) ([gdelafond](https://github.com/gdelafond))
- Adds sshd config for keyboard-interactive pam device [\#156](https://github.com/dev-sec/ansible-ssh-hardening/pull/156) ([rcII](https://github.com/rcII))
- Use package state 'present' since 'installed' is deprecated [\#154](https://github.com/dev-sec/ansible-ssh-hardening/pull/154) ([Normo](https://github.com/Normo))
- conform to current dev-sec/ssh-baseline [\#150](https://github.com/dev-sec/ansible-ssh-hardening/pull/150) ([alval5280](https://github.com/alval5280))
- new parameter: ssh\_max\_startups [\#149](https://github.com/dev-sec/ansible-ssh-hardening/pull/149) ([aeschbacher](https://github.com/aeschbacher))
- Update syntax to 2.4 [\#148](https://github.com/dev-sec/ansible-ssh-hardening/pull/148) ([thomasjpfan](https://github.com/thomasjpfan))
- Amazonlinux-Testing [\#147](https://github.com/dev-sec/ansible-ssh-hardening/pull/147) ([rndmh3ro](https://github.com/rndmh3ro))
- Fixed trailing whitespace [\#146](https://github.com/dev-sec/ansible-ssh-hardening/pull/146) ([zbrojny120](https://github.com/zbrojny120))
- Add support for Amazon Linux [\#145](https://github.com/dev-sec/ansible-ssh-hardening/pull/145) ([woneill](https://github.com/woneill))

**Fixed bugs:**

- ssh\_server\_weak\_kex variable is not used any where  [\#167](https://github.com/dev-sec/ansible-ssh-hardening/issues/167)
- opensshd.conf.j2 template type error [\#159](https://github.com/dev-sec/ansible-ssh-hardening/issues/159)
-  line 56: Bad SSH2 mac spec [\#135](https://github.com/dev-sec/ansible-ssh-hardening/issues/135)

**Closed issues:**

- Travis & Debian 9 "Stretch" [\#158](https://github.com/dev-sec/ansible-ssh-hardening/issues/158)

**Merged pull requests:**

- remove oracle7 from travis tests for the time being [\#181](https://github.com/dev-sec/ansible-ssh-hardening/pull/181) ([rndmh3ro](https://github.com/rndmh3ro))

## [4.4.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/4.4.0) (2017-12-29)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/4.3.1...4.4.0)

**Implemented enhancements:**

- Changes in selinux section to avoid confusion and some inconsistencies [\#127](https://github.com/dev-sec/ansible-ssh-hardening/issues/127)
- Issue \#137: Fix sshd\_config's "Match Group sftponly" [\#138](https://github.com/dev-sec/ansible-ssh-hardening/pull/138) ([kekumu](https://github.com/kekumu))
- allow configuration of GatewayPorts [\#136](https://github.com/dev-sec/ansible-ssh-hardening/pull/136) ([pwyliu](https://github.com/pwyliu))
- Added support for AuthorizedKeysFile config setting [\#132](https://github.com/dev-sec/ansible-ssh-hardening/pull/132) ([hyrsky](https://github.com/hyrsky))
- corrected comments explaining the task's behaviour [\#131](https://github.com/dev-sec/ansible-ssh-hardening/pull/131) ([martinbydefault](https://github.com/martinbydefault))
- Feature/2fa auth [\#123](https://github.com/dev-sec/ansible-ssh-hardening/pull/123) ([lazzurs](https://github.com/lazzurs))

**Fixed bugs:**

- ssh\_use\_dns used twice in defaults/main.yml [\#129](https://github.com/dev-sec/ansible-ssh-hardening/issues/129)

**Closed issues:**

- coreos support? [\#142](https://github.com/dev-sec/ansible-ssh-hardening/issues/142)
- UseLogin is deprecated on CentOS 7 [\#140](https://github.com/dev-sec/ansible-ssh-hardening/issues/140)
- sftp Match Group settings overriding global sshd\_config settings [\#137](https://github.com/dev-sec/ansible-ssh-hardening/issues/137)
- get openssh-version fails on FreeBSD \(with ansible 2.4.0.0\) [\#133](https://github.com/dev-sec/ansible-ssh-hardening/issues/133)

**Merged pull requests:**

- Remove deprecated UseLogin option [\#141](https://github.com/dev-sec/ansible-ssh-hardening/pull/141) ([syhe](https://github.com/syhe))
- Macs kex ciphers [\#139](https://github.com/dev-sec/ansible-ssh-hardening/pull/139) ([rndmh3ro](https://github.com/rndmh3ro))
- force /bin/sh when getting openssh-version [\#134](https://github.com/dev-sec/ansible-ssh-hardening/pull/134) ([gtz42](https://github.com/gtz42))

## [4.3.1](https://github.com/dev-sec/ansible-ssh-hardening/tree/4.3.1) (2017-08-14)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/4.3.0...4.3.1)

**Implemented enhancements:**

- Remove duplicate ssh\_use\_dns [\#130](https://github.com/dev-sec/ansible-ssh-hardening/pull/130) ([MagnusEnger](https://github.com/MagnusEnger))

**Fixed bugs:**

- System completely unresponsive after role execution [\#126](https://github.com/dev-sec/ansible-ssh-hardening/issues/126)

**Closed issues:**

- role creates duplicate parameter/values after run [\#124](https://github.com/dev-sec/ansible-ssh-hardening/issues/124)

## [4.3.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/4.3.0) (2017-08-03)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/4.1.3...4.3.0)

**Implemented enhancements:**

- Fix ansible.cfg settings [\#122](https://github.com/dev-sec/ansible-ssh-hardening/pull/122) ([fazlearefin](https://github.com/fazlearefin))
- Finish 94 [\#116](https://github.com/dev-sec/ansible-ssh-hardening/pull/116) ([rndmh3ro](https://github.com/rndmh3ro))

**Merged pull requests:**

- Don't overwrite ssh\_host\_key\_files if set manually [\#125](https://github.com/dev-sec/ansible-ssh-hardening/pull/125) ([oakey-b1](https://github.com/oakey-b1))
- Add comment filter to {{ansible\_managed}} string [\#121](https://github.com/dev-sec/ansible-ssh-hardening/pull/121) ([fazlearefin](https://github.com/fazlearefin))

## [4.1.3](https://github.com/dev-sec/ansible-ssh-hardening/tree/4.1.3) (2017-06-30)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/4.2.0...4.1.3)

## [4.2.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/4.2.0) (2017-06-30)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/4.1.2...4.2.0)

**Implemented enhancements:**

- Add support to specify a list of revoked public keys [\#120](https://github.com/dev-sec/ansible-ssh-hardening/pull/120) ([bachp](https://github.com/bachp))
- use package instead of yum so the operation works on Fedora [\#119](https://github.com/dev-sec/ansible-ssh-hardening/pull/119) ([stenwt](https://github.com/stenwt))

**Fixed bugs:**

- fails in --check mode [\#111](https://github.com/dev-sec/ansible-ssh-hardening/issues/111)

**Merged pull requests:**

- Do not use shell when not needed + Lint whitespaces [\#118](https://github.com/dev-sec/ansible-ssh-hardening/pull/118) ([krhubert](https://github.com/krhubert))

## [4.1.2](https://github.com/dev-sec/ansible-ssh-hardening/tree/4.1.2) (2017-05-31)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/4.1.1...4.1.2)

**Implemented enhancements:**

- added check\_mode: no to "get openssh-version" task, so it won't fail … [\#117](https://github.com/dev-sec/ansible-ssh-hardening/pull/117) ([wschaft](https://github.com/wschaft))

**Fixed bugs:**

- User login failed after running this module [\#114](https://github.com/dev-sec/ansible-ssh-hardening/issues/114)

**Closed issues:**

- Update readme to include baselines [\#110](https://github.com/dev-sec/ansible-ssh-hardening/issues/110)

## [4.1.1](https://github.com/dev-sec/ansible-ssh-hardening/tree/4.1.1) (2017-05-18)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/4.1.0...4.1.1)

**Implemented enhancements:**

- fix validation error [\#113](https://github.com/dev-sec/ansible-ssh-hardening/pull/113) ([pwyliu](https://github.com/pwyliu))

## [4.1.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/4.1.0) (2017-05-09)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/4.0.0...4.1.0)

**Implemented enhancements:**

- Provide option to allow password server login [\#106](https://github.com/dev-sec/ansible-ssh-hardening/issues/106)
- Deprecation warning always\_run [\#82](https://github.com/dev-sec/ansible-ssh-hardening/issues/82)
- Added support for UseDNS config switch [\#109](https://github.com/dev-sec/ansible-ssh-hardening/pull/109) ([ftaeger](https://github.com/ftaeger))
- Added support for UseDNS config switch [\#108](https://github.com/dev-sec/ansible-ssh-hardening/pull/108) ([ftaeger](https://github.com/ftaeger))

**Fixed bugs:**

- `create ssh\_config and set permissions to root/644` step repeated [\#104](https://github.com/dev-sec/ansible-ssh-hardening/issues/104)

**Merged pull requests:**

- Added support for PermitTunnel config switch [\#112](https://github.com/dev-sec/ansible-ssh-hardening/pull/112) ([fti7](https://github.com/fti7))
- Adds option to enable password based authentication on the server [\#107](https://github.com/dev-sec/ansible-ssh-hardening/pull/107) ([colin-nolan](https://github.com/colin-nolan))

## [4.0.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/4.0.0) (2017-04-22)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/3.2.0...4.0.0)

**Implemented enhancements:**

- Avoid small primes for DH and allow rebuild of DH primes [\#89](https://github.com/dev-sec/ansible-ssh-hardening/issues/89)
- Accommodate missing plugins in kitchen\_vagrant\_block.rb [\#100](https://github.com/dev-sec/ansible-ssh-hardening/pull/100) ([fullyint](https://github.com/fullyint))
- Use different Hostkeys according to installed ssh version [\#99](https://github.com/dev-sec/ansible-ssh-hardening/pull/99) ([rndmh3ro](https://github.com/rndmh3ro))
- Remove small dh primes [\#97](https://github.com/dev-sec/ansible-ssh-hardening/pull/97) ([rndmh3ro](https://github.com/rndmh3ro))
- Add Ed25519 SSH host key to match commit 28b4df3 in ssh-baseline [\#96](https://github.com/dev-sec/ansible-ssh-hardening/pull/96) ([techraf](https://github.com/techraf))
- Add support for FreeBSD OpenSSH server and client [\#95](https://github.com/dev-sec/ansible-ssh-hardening/pull/95) ([jbenden](https://github.com/jbenden))
- Replace deprecated always\_run with check\_mode [\#93](https://github.com/dev-sec/ansible-ssh-hardening/pull/93) ([jbenden](https://github.com/jbenden))
- Defaults: Remove DSA from SSH host keys to match ssh-baseline profile [\#92](https://github.com/dev-sec/ansible-ssh-hardening/pull/92) ([techraf](https://github.com/techraf))
- use new docker images [\#91](https://github.com/dev-sec/ansible-ssh-hardening/pull/91) ([rndmh3ro](https://github.com/rndmh3ro))
- use centos 7 in vagrant, limit ssh conns [\#88](https://github.com/dev-sec/ansible-ssh-hardening/pull/88) ([rndmh3ro](https://github.com/rndmh3ro))
- remove support for ansible 1.9 [\#87](https://github.com/dev-sec/ansible-ssh-hardening/pull/87) ([rndmh3ro](https://github.com/rndmh3ro))
- make ChallengeResponseAuthentication configurable [\#85](https://github.com/dev-sec/ansible-ssh-hardening/pull/85) ([rndmh3ro](https://github.com/rndmh3ro))
- List only one Port in ssh config [\#84](https://github.com/dev-sec/ansible-ssh-hardening/pull/84) ([fullyint](https://github.com/fullyint))
- Fix ssh config to handle custom options per Host [\#83](https://github.com/dev-sec/ansible-ssh-hardening/pull/83) ([fullyint](https://github.com/fullyint))

**Fixed bugs:**

- SELinux-specific task still runs on SELinux-disabled systems [\#74](https://github.com/dev-sec/ansible-ssh-hardening/issues/74)

**Closed issues:**

- Should compression be opt-in? [\#90](https://github.com/dev-sec/ansible-ssh-hardening/issues/90)
- The role fails when conditionally included [\#86](https://github.com/dev-sec/ansible-ssh-hardening/issues/86)

**Merged pull requests:**

- remove duplicate section [\#105](https://github.com/dev-sec/ansible-ssh-hardening/pull/105) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix ssh\_server\_ports and ssh\_client\_ports documentation bug [\#80](https://github.com/dev-sec/ansible-ssh-hardening/pull/80) ([kivilahtio](https://github.com/kivilahtio))

## [3.2.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/3.2.0) (2016-10-24)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/3.1.0...3.2.0)

**Implemented enhancements:**

- CentOS 7 selinux dependencies [\#76](https://github.com/dev-sec/ansible-ssh-hardening/issues/76)
- install selinux dependencies, check for already installed semodule [\#79](https://github.com/dev-sec/ansible-ssh-hardening/pull/79) ([rndmh3ro](https://github.com/rndmh3ro))
- Parameterise Banner and DebianBanner as defaults [\#77](https://github.com/dev-sec/ansible-ssh-hardening/pull/77) ([tsenart](https://github.com/tsenart))

**Fixed bugs:**

- Some tasks are always run even if they are not needed [\#78](https://github.com/dev-sec/ansible-ssh-hardening/issues/78)
- Selinux issue [\#75](https://github.com/dev-sec/ansible-ssh-hardening/issues/75)
- Running the tests locally [\#61](https://github.com/dev-sec/ansible-ssh-hardening/issues/61)

**Closed issues:**

- Applied-Crypto-Hardening project and new cyphers. [\#28](https://github.com/dev-sec/ansible-ssh-hardening/issues/28)

## [3.1.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/3.1.0) (2016-08-03)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/3.1...3.1.0)

**Implemented enhancements:**

- use new ciphers, kex, macs and privilege separation for redhat family 7 or later [\#72](https://github.com/dev-sec/ansible-ssh-hardening/issues/72)

## [3.1](https://github.com/dev-sec/ansible-ssh-hardening/tree/3.1) (2016-08-03)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/3.0.0...3.1)

**Implemented enhancements:**

- Add Xenial / Ubuntu 16.04 LTS to meta/main.yml [\#63](https://github.com/dev-sec/ansible-ssh-hardening/issues/63)
- Use new ciphers, kex, macs and priv separation sandbox for redhat family 7 [\#73](https://github.com/dev-sec/ansible-ssh-hardening/pull/73) ([atomic111](https://github.com/atomic111))
- add docker support [\#71](https://github.com/dev-sec/ansible-ssh-hardening/pull/71) ([rndmh3ro](https://github.com/rndmh3ro))
- add always\_run: true to task. fix \#64 [\#69](https://github.com/dev-sec/ansible-ssh-hardening/pull/69) ([rndmh3ro](https://github.com/rndmh3ro))
- Debian8 [\#68](https://github.com/dev-sec/ansible-ssh-hardening/pull/68) ([rndmh3ro](https://github.com/rndmh3ro))
- Fixed KexAlgorithms Conditional Statement [\#66](https://github.com/dev-sec/ansible-ssh-hardening/pull/66) ([cjsheets](https://github.com/cjsheets))
- Moves vars to defaults [\#60](https://github.com/dev-sec/ansible-ssh-hardening/pull/60) ([conorsch](https://github.com/conorsch))

**Fixed bugs:**

- semodule ssh\_password error on AWS Centos 7 [\#64](https://github.com/dev-sec/ansible-ssh-hardening/issues/64)

**Closed issues:**

- `ssh\_server\_ports` a bit misleading in the vars section? [\#62](https://github.com/dev-sec/ansible-ssh-hardening/issues/62)
- sftp\_enabled: false will break Ansible's template module [\#55](https://github.com/dev-sec/ansible-ssh-hardening/issues/55)
- Move cipher/kex/mac vars to defaults [\#53](https://github.com/dev-sec/ansible-ssh-hardening/issues/53)

**Merged pull requests:**

- Add SCP/SFTP to FAQ [\#58](https://github.com/dev-sec/ansible-ssh-hardening/pull/58) ([rndmh3ro](https://github.com/rndmh3ro))

## [3.0.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/3.0.0) (2016-03-13)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/2.0.0...3.0.0)

**Implemented enhancements:**

- Added sftp\_enabled, sftp\_chroot\_dir, and ssh\_client\_roaming from the … [\#57](https://github.com/dev-sec/ansible-ssh-hardening/pull/57) ([shirokatze](https://github.com/shirokatze))
- add test support for ansible 1.9 and 2.0 [\#56](https://github.com/dev-sec/ansible-ssh-hardening/pull/56) ([rndmh3ro](https://github.com/rndmh3ro))
- update platforms in meta-file [\#52](https://github.com/dev-sec/ansible-ssh-hardening/pull/52) ([rndmh3ro](https://github.com/rndmh3ro))
- add webhook for ansible galaxy [\#51](https://github.com/dev-sec/ansible-ssh-hardening/pull/51) ([rndmh3ro](https://github.com/rndmh3ro))
- Disable experimental client roaming. [\#49](https://github.com/dev-sec/ansible-ssh-hardening/pull/49) ([rndmh3ro](https://github.com/rndmh3ro))
- use inspec as test framework [\#48](https://github.com/dev-sec/ansible-ssh-hardening/pull/48) ([chris-rock](https://github.com/chris-rock))
- Change categories to tags for upcoming ansible 2.0 [\#47](https://github.com/dev-sec/ansible-ssh-hardening/pull/47) ([rndmh3ro](https://github.com/rndmh3ro))
- add changelog generator [\#46](https://github.com/dev-sec/ansible-ssh-hardening/pull/46) ([chris-rock](https://github.com/chris-rock))

**Closed issues:**

- Install from ansible galaxy missing files \(tasks\) [\#50](https://github.com/dev-sec/ansible-ssh-hardening/issues/50)
- should generate new ssh host key files [\#45](https://github.com/dev-sec/ansible-ssh-hardening/issues/45)

**Merged pull requests:**

- New release 3.0.0 [\#59](https://github.com/dev-sec/ansible-ssh-hardening/pull/59) ([rndmh3ro](https://github.com/rndmh3ro))
- Add var to travis job [\#42](https://github.com/dev-sec/ansible-ssh-hardening/pull/42) ([rndmh3ro](https://github.com/rndmh3ro))

## [2.0.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/2.0.0) (2015-11-28)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/1.2.1...2.0.0)

**Closed issues:**

- Fix directory structure. [\#43](https://github.com/dev-sec/ansible-ssh-hardening/issues/43)

**Merged pull requests:**

- New dir layout. Fix \#43 [\#44](https://github.com/dev-sec/ansible-ssh-hardening/pull/44) ([rndmh3ro](https://github.com/rndmh3ro))
- sftp\_enable option [\#41](https://github.com/dev-sec/ansible-ssh-hardening/pull/41) ([fitz123](https://github.com/fitz123))

## [1.2.1](https://github.com/dev-sec/ansible-ssh-hardening/tree/1.2.1) (2015-10-16)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/1.2...1.2.1)

**Merged pull requests:**

- Allow whitelisted groups on ssh [\#40](https://github.com/dev-sec/ansible-ssh-hardening/pull/40) ([fheinle](https://github.com/fheinle))

## [1.2](https://github.com/dev-sec/ansible-ssh-hardening/tree/1.2) (2015-09-28)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/1.2.0...1.2)

## [1.2.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/1.2.0) (2015-09-28)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/1.1...1.2.0)

**Merged pull requests:**

- bugfix. Now option true for PrintLastLog is available again [\#39](https://github.com/dev-sec/ansible-ssh-hardening/pull/39) ([fitz123](https://github.com/fitz123))
- Add more travis-tests [\#38](https://github.com/dev-sec/ansible-ssh-hardening/pull/38) ([rndmh3ro](https://github.com/rndmh3ro))
- Support for selinux and pam. fix \#23 [\#35](https://github.com/dev-sec/ansible-ssh-hardening/pull/35) ([rndmh3ro](https://github.com/rndmh3ro))

## [1.1](https://github.com/dev-sec/ansible-ssh-hardening/tree/1.1) (2015-09-01)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/1.1.0...1.1)

## [1.1.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/1.1.0) (2015-09-01)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/1.0.0...1.1.0)

**Closed issues:**

- ssh\_ports - individual client/server config [\#33](https://github.com/dev-sec/ansible-ssh-hardening/issues/33)
- UsePAM should probably default to yes on Red Hat Linux 7 [\#23](https://github.com/dev-sec/ansible-ssh-hardening/issues/23)

**Merged pull requests:**

- Change variable for hmac from server to client [\#37](https://github.com/dev-sec/ansible-ssh-hardening/pull/37) ([rndmh3ro](https://github.com/rndmh3ro))
- Update kitchen-ansible, remove separate debian install [\#36](https://github.com/dev-sec/ansible-ssh-hardening/pull/36) ([rndmh3ro](https://github.com/rndmh3ro))
- Separate ssh client and server ports. Fix \#33 [\#34](https://github.com/dev-sec/ansible-ssh-hardening/pull/34) ([rndmh3ro](https://github.com/rndmh3ro))
- update common kitchen.yml platforms \(ansible\), kitchen\_debian.yml platforms \(ansible\) [\#32](https://github.com/dev-sec/ansible-ssh-hardening/pull/32) ([chris-rock](https://github.com/chris-rock))
- Make MaxAuthTries configurable [\#31](https://github.com/dev-sec/ansible-ssh-hardening/pull/31) ([rndmh3ro](https://github.com/rndmh3ro))
- Change oneliner if-statements to be more readable [\#30](https://github.com/dev-sec/ansible-ssh-hardening/pull/30) ([rndmh3ro](https://github.com/rndmh3ro))
- Make ssh client password login configurable. [\#29](https://github.com/dev-sec/ansible-ssh-hardening/pull/29) ([ypid](https://github.com/ypid))
- Fix join-filter, jinja-cases, intendation [\#27](https://github.com/dev-sec/ansible-ssh-hardening/pull/27) ([rndmh3ro](https://github.com/rndmh3ro))
- Short role review. Fixed role when ssh\_client\_weak\_kex == true. [\#26](https://github.com/dev-sec/ansible-ssh-hardening/pull/26) ([ypid](https://github.com/ypid))
- Make it configurable to only harden ssh client/server or both \(default\). [\#25](https://github.com/dev-sec/ansible-ssh-hardening/pull/25) ([ypid](https://github.com/ypid))
- Separate system-vars from editable vars [\#24](https://github.com/dev-sec/ansible-ssh-hardening/pull/24) ([rndmh3ro](https://github.com/rndmh3ro))
- Add correct CONTRIB-file [\#22](https://github.com/dev-sec/ansible-ssh-hardening/pull/22) ([rndmh3ro](https://github.com/rndmh3ro))
- Add Ansible Galaxy badge [\#21](https://github.com/dev-sec/ansible-ssh-hardening/pull/21) ([rndmh3ro](https://github.com/rndmh3ro))
- fix configuration of playbook path [\#20](https://github.com/dev-sec/ansible-ssh-hardening/pull/20) ([chris-rock](https://github.com/chris-rock))
- Debian install script [\#19](https://github.com/dev-sec/ansible-ssh-hardening/pull/19) ([rndmh3ro](https://github.com/rndmh3ro))

## [1.0.0](https://github.com/dev-sec/ansible-ssh-hardening/tree/1.0.0) (2015-04-30)

[Full Changelog](https://github.com/dev-sec/ansible-ssh-hardening/compare/a9591764206b79a4ed324bb8576151ebac0127b1...1.0.0)

**Implemented enhancements:**

- Update variable-documentation [\#12](https://github.com/dev-sec/ansible-ssh-hardening/pull/12) ([rndmh3ro](https://github.com/rndmh3ro))

**Closed issues:**

- add travis test for ubuntu 12.04 [\#7](https://github.com/dev-sec/ansible-ssh-hardening/issues/7)
- Use handler for sshd restart [\#6](https://github.com/dev-sec/ansible-ssh-hardening/issues/6)
- Running test-kitchen fails [\#2](https://github.com/dev-sec/ansible-ssh-hardening/issues/2)

**Merged pull requests:**

- add self as author [\#18](https://github.com/dev-sec/ansible-ssh-hardening/pull/18) ([chris-rock](https://github.com/chris-rock))
- add badges [\#17](https://github.com/dev-sec/ansible-ssh-hardening/pull/17) ([chris-rock](https://github.com/chris-rock))
- fix meta.yml [\#16](https://github.com/dev-sec/ansible-ssh-hardening/pull/16) ([chris-rock](https://github.com/chris-rock))
- add more information to changelog [\#15](https://github.com/dev-sec/ansible-ssh-hardening/pull/15) ([chris-rock](https://github.com/chris-rock))
- Add meta-information for Ansible Galaxy [\#14](https://github.com/dev-sec/ansible-ssh-hardening/pull/14) ([rndmh3ro](https://github.com/rndmh3ro))
- Update CHANGELOG.md [\#13](https://github.com/dev-sec/ansible-ssh-hardening/pull/13) ([rndmh3ro](https://github.com/rndmh3ro))
- Add handler to restart ssh only if necessary. Fix \#6 [\#11](https://github.com/dev-sec/ansible-ssh-hardening/pull/11) ([rndmh3ro](https://github.com/rndmh3ro))
- add more descriptions [\#10](https://github.com/dev-sec/ansible-ssh-hardening/pull/10) ([chris-rock](https://github.com/chris-rock))
- add travis config for ansible [\#9](https://github.com/dev-sec/ansible-ssh-hardening/pull/9) ([chris-rock](https://github.com/chris-rock))
- update .kitchen.yml to find playbook role in tests [\#8](https://github.com/dev-sec/ansible-ssh-hardening/pull/8) ([chris-rock](https://github.com/chris-rock))
- Oracle support [\#5](https://github.com/dev-sec/ansible-ssh-hardening/pull/5) ([rndmh3ro](https://github.com/rndmh3ro))
-  Remove custom Vagrantfile-reference. Fix \#2 [\#4](https://github.com/dev-sec/ansible-ssh-hardening/pull/4) ([rndmh3ro](https://github.com/rndmh3ro))
- Remove custom Vagrantfile-reference. Fix \#2 [\#3](https://github.com/dev-sec/ansible-ssh-hardening/pull/3) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix missing gem [\#1](https://github.com/dev-sec/ansible-ssh-hardening/pull/1) ([chris-rock](https://github.com/chris-rock))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
