# Changelog

## [Unreleased](https://github.com/dev-sec/ansible-collection-hardening/tree/HEAD)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.13.2...HEAD)

**Implemented enhancements:**

- Add option to set timeout in seconds to logout users [\#516](https://github.com/dev-sec/ansible-collection-hardening/pull/516) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([lbayerlein](https://github.com/lbayerlein))
- add feature to disable coredump to limit task [\#511](https://github.com/dev-sec/ansible-collection-hardening/pull/511) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([lbayerlein](https://github.com/lbayerlein))
- change hidepid mount task state to mounted [\#510](https://github.com/dev-sec/ansible-collection-hardening/pull/510) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([alegrey91](https://github.com/alegrey91))
- prettify nginx options [\#509](https://github.com/dev-sec/ansible-collection-hardening/pull/509) [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([schurzi](https://github.com/schurzi))
- Update nginx\_add\_header README to match default [\#506](https://github.com/dev-sec/ansible-collection-hardening/pull/506) [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([duffn](https://github.com/duffn))
- Updated dh\_params to 4096 [\#501](https://github.com/dev-sec/ansible-collection-hardening/pull/501) [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([ksaadDE](https://github.com/ksaadDE))

**Fixed bugs:**

- Duplication of sysctl default parameter fs.protected\_hardlinks and fs.protected\_symlinks [\#502](https://github.com/dev-sec/ansible-collection-hardening/issues/502)
- Fix duplicate sysctl config in fs [\#505](https://github.com/dev-sec/ansible-collection-hardening/pull/505) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([tekicat](https://github.com/tekicat))

**Merged pull requests:**

- Feature coredump [\#513](https://github.com/dev-sec/ansible-collection-hardening/pull/513) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))

## [7.13.2](https://github.com/dev-sec/ansible-collection-hardening/tree/7.13.2) (2021-11-23)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.13.1...7.13.2)

## [7.13.1](https://github.com/dev-sec/ansible-collection-hardening/tree/7.13.1) (2021-11-23)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.13.0...7.13.1)

**Closed issues:**

- Unable to use 7.13.0 Release [\#503](https://github.com/dev-sec/ansible-collection-hardening/issues/503)

## [7.13.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.13.0) (2021-11-15)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.12.0...7.13.0)

**Implemented enhancements:**

- os\_hardening: Provide a whitelist for yum repositories with non-signed RPMs [\#485](https://github.com/dev-sec/ansible-collection-hardening/issues/485)
- Disable ctrl-alt-del key combination [\#496](https://github.com/dev-sec/ansible-collection-hardening/pull/496) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([lbayerlein](https://github.com/lbayerlein))
- implement sysctl-34 - link protection settings [\#494](https://github.com/dev-sec/ansible-collection-hardening/pull/494) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- Add whitelist option for yum repository files [\#487](https://github.com/dev-sec/ansible-collection-hardening/pull/487) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([darxriggs](https://github.com/darxriggs))
- Add TLSv1.3 to nginx default configuration [\#470](https://github.com/dev-sec/ansible-collection-hardening/pull/470) [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([ksaadDE](https://github.com/ksaadDE))

**Closed issues:**

- Please create the collection in ansible-galaxy [\#407](https://github.com/dev-sec/ansible-collection-hardening/issues/407)

**Merged pull requests:**

- Improve testing: install packages on Arch Linux [\#499](https://github.com/dev-sec/ansible-collection-hardening/pull/499) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([darxriggs](https://github.com/darxriggs))
- add old role names to tags in Galaxy [\#495](https://github.com/dev-sec/ansible-collection-hardening/pull/495) ([schurzi](https://github.com/schurzi))
- update minimum ansible version for roles [\#493](https://github.com/dev-sec/ansible-collection-hardening/pull/493) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- revive old tests with custom ssh settings [\#491](https://github.com/dev-sec/ansible-collection-hardening/pull/491) ([rndmh3ro](https://github.com/rndmh3ro))

## [7.12.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.12.0) (2021-10-21)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.11.0...7.12.0)

**Implemented enhancements:**

- feat\(os\_hardening\): extend file permission tasks to cover more files [\#489](https://github.com/dev-sec/ansible-collection-hardening/pull/489) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([cmhe](https://github.com/cmhe))

**Fixed bugs:**

- mysql remove deprecated 'secure\_auth' parameter in mysql [\#346](https://github.com/dev-sec/ansible-collection-hardening/issues/346)
- change baseline urls to full zip-url [\#490](https://github.com/dev-sec/ansible-collection-hardening/pull/490) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- fix filter error in ansible.builtin.file mode parameter [\#486](https://github.com/dev-sec/ansible-collection-hardening/pull/486) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([ssttehrani](https://github.com/ssttehrani))

**Closed issues:**

- Extend os\_hardening minimize\_access task to cover additional passwd/group/shadow/gshadow paths [\#488](https://github.com/dev-sec/ansible-collection-hardening/issues/488)
- postgresql\_hardening role [\#484](https://github.com/dev-sec/ansible-collection-hardening/issues/484)
- os\_hardening fails on "Create a combined sysctl-dict if overwrites are defined" task [\#482](https://github.com/dev-sec/ansible-collection-hardening/issues/482)
- Improve changelog generation [\#381](https://github.com/dev-sec/ansible-collection-hardening/issues/381)

## [7.11.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.11.0) (2021-08-30)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.10.0...7.11.0)

**Implemented enhancements:**

- Use `log_error` file and `datadir` from mysql\_info settings instead of variables `mysql_datadir` and `mysql_hardening_log_file` [\#478](https://github.com/dev-sec/ansible-collection-hardening/pull/478) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] ([123quhiwiwk](https://github.com/123quhiwiwk))
- Execute check of MySQL error logfile permissions on Debian 11 only when log\_error is defined [\#477](https://github.com/dev-sec/ansible-collection-hardening/pull/477) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] ([123quhiwiwk](https://github.com/123quhiwiwk))
- \[mysql\_hardening\] Setup defaults for MySQL on FreeBSD [\#474](https://github.com/dev-sec/ansible-collection-hardening/pull/474) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] ([sdwilsh](https://github.com/sdwilsh))

**Closed issues:**

- MariaDB hardening fails, because log\_error file is missing \[Debian 11\] [\#476](https://github.com/dev-sec/ansible-collection-hardening/issues/476)

**Merged pull requests:**

- ssh\_allow\_tcp\_forwarding is not a boolean [\#480](https://github.com/dev-sec/ansible-collection-hardening/pull/480) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([ReinerNippes](https://github.com/ReinerNippes))
- chore\(ssh\_hardening\): set min\_ansible\_version to \>=2.9.10 [\#479](https://github.com/dev-sec/ansible-collection-hardening/pull/479) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([bufferoverflow](https://github.com/bufferoverflow))

## [7.10.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.10.0) (2021-08-15)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.9.0...7.10.0)

**Implemented enhancements:**

- use Ansible lint in separate task [\#475](https://github.com/dev-sec/ansible-collection-hardening/pull/475) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- \[mysql\_hardening\] Allow setting the mysql\_distribution [\#473](https://github.com/dev-sec/ansible-collection-hardening/pull/473) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] ([sdwilsh](https://github.com/sdwilsh))

**Fixed bugs:**

- mysql\_hardening cannot work with mysql on freebsd [\#472](https://github.com/dev-sec/ansible-collection-hardening/issues/472)

**Closed issues:**

- run ansible-lint only once in Github Actions [\#398](https://github.com/dev-sec/ansible-collection-hardening/issues/398)

**Merged pull requests:**

- SSH Hardening: backtick typo [\#471](https://github.com/dev-sec/ansible-collection-hardening/pull/471) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([Slamdunk](https://github.com/Slamdunk))
- fix license in galaxy [\#469](https://github.com/dev-sec/ansible-collection-hardening/pull/469) ([rndmh3ro](https://github.com/rndmh3ro))

## [7.9.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.9.0) (2021-07-22)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.8.0...7.9.0)

**Implemented enhancements:**

- Allow configuration of password remember in pam [\#467](https://github.com/dev-sec/ansible-collection-hardening/pull/467) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([m41kc0d3](https://github.com/m41kc0d3))
- Add CVE-2021-33909 mitigations [\#466](https://github.com/dev-sec/ansible-collection-hardening/pull/466) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([kravietz](https://github.com/kravietz))
- Add SUB\_UID\_MIN/MAX/COUNT, SUB\_GID\_MIN/MAX/COUNT [\#463](https://github.com/dev-sec/ansible-collection-hardening/pull/463) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([elgalu](https://github.com/elgalu))
- Add os\_auth\_uid\_max, os\_auth\_gid\_max [\#461](https://github.com/dev-sec/ansible-collection-hardening/pull/461) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([elgalu](https://github.com/elgalu))

**Closed issues:**

- MySQL hardening fails because of missing attribute [\#464](https://github.com/dev-sec/ansible-collection-hardening/issues/464)
- add "when" statements for every import\_tasks in hardening.yml [\#453](https://github.com/dev-sec/ansible-collection-hardening/issues/453)

**Merged pull requests:**

- update metadata to include community.mysql deps [\#465](https://github.com/dev-sec/ansible-collection-hardening/pull/465) ([rndmh3ro](https://github.com/rndmh3ro))

## [7.8.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.8.0) (2021-07-01)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.7.0...7.8.0)

**Implemented enhancements:**

- SHA\_CRYPT\_MIN\_ROUNDS should be increased in login.defs [\#365](https://github.com/dev-sec/ansible-collection-hardening/issues/365) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)]
- Add support for Rocky Linux 8 [\#454](https://github.com/dev-sec/ansible-collection-hardening/pull/454) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([sherwind](https://github.com/sherwind))
- make sha rounds configurable and increase no of rounds [\#452](https://github.com/dev-sec/ansible-collection-hardening/pull/452) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))

**Fixed bugs:**

- add tag always to os dependent vars task [\#456](https://github.com/dev-sec/ansible-collection-hardening/pull/456) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([schurzi](https://github.com/schurzi))
- Use `include_tasks` for os\_hardening/main.yml [\#451](https://github.com/dev-sec/ansible-collection-hardening/pull/451) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([coadler](https://github.com/coadler))

**Closed issues:**

- Disable IPv6 | sysctl-18   net.ipv6.conf.all.disable\_ipv6: 1 [\#406](https://github.com/dev-sec/ansible-collection-hardening/issues/406) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)]

**Merged pull requests:**

- Cleanup old OS-support and simplify vars [\#458](https://github.com/dev-sec/ansible-collection-hardening/pull/458) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- add rocky linux 8 tests and make sure that all relevant tasks are execd [\#457](https://github.com/dev-sec/ansible-collection-hardening/pull/457) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- add "when" statements in hardening.yml\(\#453\) [\#455](https://github.com/dev-sec/ansible-collection-hardening/pull/455) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([jqiuyin](https://github.com/jqiuyin))
- enable ipv6 globally [\#450](https://github.com/dev-sec/ansible-collection-hardening/pull/450) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))

## [7.7.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.7.0) (2021-05-24)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.6.0...7.7.0)

**Implemented enhancements:**

- Add tasks for new controls [\#123](https://github.com/dev-sec/ansible-collection-hardening/issues/123)
- ssh\_allow\_tcp\_forwarding remote option added [\#447](https://github.com/dev-sec/ansible-collection-hardening/pull/447) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([alimli](https://github.com/alimli))

**Fixed bugs:**

- Warning: iptables-legacy tables present, Debian 10 [\#274](https://github.com/dev-sec/ansible-collection-hardening/issues/274)
- Check for MariaDB Version when selecting users without passwords [\#444](https://github.com/dev-sec/ansible-collection-hardening/pull/444) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] ([neubi4](https://github.com/neubi4))
- Adds dependency on ansible.posix and community.general [\#415](https://github.com/dev-sec/ansible-collection-hardening/pull/415) ([irl](https://github.com/irl))

**Closed issues:**

- No dependency on ansible.posix collection [\#414](https://github.com/dev-sec/ansible-collection-hardening/issues/414)
- No dependency on community.general [\#413](https://github.com/dev-sec/ansible-collection-hardening/issues/413)
- in lxc/docker/openvz IPv6 is always disabled by ufw-configuration [\#402](https://github.com/dev-sec/ansible-collection-hardening/issues/402)
- Allow login\_unix\_socket to be specified [\#327](https://github.com/dev-sec/ansible-collection-hardening/issues/327)

**Merged pull requests:**

- Removed sysctl that tries to disable IPv6 [\#449](https://github.com/dev-sec/ansible-collection-hardening/pull/449) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([lduesing](https://github.com/lduesing))
- limit changelog labels to role names [\#448](https://github.com/dev-sec/ansible-collection-hardening/pull/448) ([schurzi](https://github.com/schurzi))
- add back labels to changelog [\#446](https://github.com/dev-sec/ansible-collection-hardening/pull/446) ([rndmh3ro](https://github.com/rndmh3ro))

## [7.6.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.6.0) (2021-04-27)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.5.0...7.6.0)

**Implemented enhancements:**

- ssh: Client HostKeyAlgorithms configuration variable [\#442](https://github.com/dev-sec/ansible-collection-hardening/pull/442) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([sepek](https://github.com/sepek))

**Fixed bugs:**

- mysql USER and HOST should be quoted for drop query [\#443](https://github.com/dev-sec/ansible-collection-hardening/pull/443) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] ([neubi4](https://github.com/neubi4))

**Closed issues:**

- Support HostKeyAlgorithms configuration for ssh\_client file [\#441](https://github.com/dev-sec/ansible-collection-hardening/issues/441)

**Merged pull requests:**

- fixed a typo in comments [\#439](https://github.com/dev-sec/ansible-collection-hardening/pull/439) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([ssttehrani](https://github.com/ssttehrani))

## [7.5.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.5.0) (2021-04-01)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.4.0...7.5.0)

**Implemented enhancements:**

- Not accepting source routing for IPv6. This was already done for IPv4. [\#424](https://github.com/dev-sec/ansible-collection-hardening/pull/424) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([joubbi](https://github.com/joubbi))

**Fixed bugs:**

- SSH kex sntrup4591761x25519-sha512@tinyssh.org replaced [\#433](https://github.com/dev-sec/ansible-collection-hardening/issues/433)
- Fix ssh kex sntrup761x25519-sha512@openssh.com for openssh \>= 8.5 [\#437](https://github.com/dev-sec/ansible-collection-hardening/pull/437) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([BenjaminBoehm](https://github.com/BenjaminBoehm))

**Closed issues:**

- Harden user home directories [\#276](https://github.com/dev-sec/ansible-collection-hardening/issues/276)

**Merged pull requests:**

-  remove secure-auth param if mysql \>= 8.0.3 [\#438](https://github.com/dev-sec/ansible-collection-hardening/pull/438) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- Improved comments. [\#436](https://github.com/dev-sec/ansible-collection-hardening/pull/436) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([joubbi](https://github.com/joubbi))
- os\_auth\_pam\_pwquality\_options: Changed type to authtok\_type [\#432](https://github.com/dev-sec/ansible-collection-hardening/pull/432) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([joubbi](https://github.com/joubbi))
- add restart-auditd handler after configuration change [\#427](https://github.com/dev-sec/ansible-collection-hardening/pull/427) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- add new tasks to delete mysql users without passwords [\#423](https://github.com/dev-sec/ansible-collection-hardening/pull/423) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- Uppercased first letter of task names. [\#422](https://github.com/dev-sec/ansible-collection-hardening/pull/422) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([joubbi](https://github.com/joubbi))

## [7.4.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.4.0) (2021-03-23)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.3.0...7.4.0)

**Implemented enhancements:**

- Harden user home dirs [\#428](https://github.com/dev-sec/ansible-collection-hardening/pull/428) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))

**Closed issues:**

- Errors in packer build for vagrant builder [\#244](https://github.com/dev-sec/ansible-collection-hardening/issues/244)

**Merged pull requests:**

- Use pam\_pwhistory.so instead of pam\_unix.so for remembering old passwords [\#431](https://github.com/dev-sec/ansible-collection-hardening/pull/431) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([joubbi](https://github.com/joubbi))
- Remove comments from PAM config file, but keep it in the template [\#430](https://github.com/dev-sec/ansible-collection-hardening/pull/430) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([joubbi](https://github.com/joubbi))
- add support for using a proxy to test with molecule [\#429](https://github.com/dev-sec/ansible-collection-hardening/pull/429) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- Improve Documentation for sysctl defaults [\#418](https://github.com/dev-sec/ansible-collection-hardening/pull/418) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([joubbi](https://github.com/joubbi))

## [7.3.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.3.0) (2021-03-16)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.2.0...7.3.0)

**Implemented enhancements:**

- pam\_tally2 is deprecated in RHEL8 and pam\_faillock should be used in EL7 and EL8 instead. [\#377](https://github.com/dev-sec/ansible-collection-hardening/issues/377) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)]
- Replace pam\_tally2 with pam\_faillock in Redhat [\#273](https://github.com/dev-sec/ansible-collection-hardening/issues/273) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)]
- Extend GSSAPI configuration support to ssh\_config [\#403](https://github.com/dev-sec/ansible-collection-hardening/pull/403) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([wzzrd](https://github.com/wzzrd))
- add restart handler variable for mysql role [\#399](https://github.com/dev-sec/ansible-collection-hardening/pull/399) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- restructure PAM handling and update for currently supported Linux distributions [\#392](https://github.com/dev-sec/ansible-collection-hardening/pull/392) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([schurzi](https://github.com/schurzi))

**Fixed bugs:**

- Not able to use `sudo` command for user authenticated via ActiveDirectory [\#278](https://github.com/dev-sec/ansible-collection-hardening/issues/278) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)]
- You shouldn't touch /etc/pam.d/system-auth-ac in RedHat/CentOS [\#252](https://github.com/dev-sec/ansible-collection-hardening/issues/252) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)]

**Closed issues:**

- Netdata monitoring of docker in docker no longer possible [\#412](https://github.com/dev-sec/ansible-collection-hardening/issues/412)
- Unable to connect with SSH \(Permission denied \(publickey\)\) [\#411](https://github.com/dev-sec/ansible-collection-hardening/issues/411)
- TASK \[os\_hardening : configure auditd | package-08\] [\#410](https://github.com/dev-sec/ansible-collection-hardening/issues/410)
- Collection throws undefined ansible\_role\_name error in auditd task [\#409](https://github.com/dev-sec/ansible-collection-hardening/issues/409)
- Ensure permissions on /etc/crontab are configured [\#375](https://github.com/dev-sec/ansible-collection-hardening/issues/375) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)]
- Documentation should be updated [\#361](https://github.com/dev-sec/ansible-collection-hardening/issues/361)

**Merged pull requests:**

- Improve Release Action [\#421](https://github.com/dev-sec/ansible-collection-hardening/pull/421) ([schurzi](https://github.com/schurzi))
- remove FQCN from roles in examples [\#420](https://github.com/dev-sec/ansible-collection-hardening/pull/420) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([schurzi](https://github.com/schurzi))
- Ensure permissions on /etc/crontab are configured [\#405](https://github.com/dev-sec/ansible-collection-hardening/pull/405) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([joubbi](https://github.com/joubbi))
- remove FQCN from roles in examples [\#404](https://github.com/dev-sec/ansible-collection-hardening/pull/404) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([schurzi](https://github.com/schurzi))
- do not install mysql python package on target host [\#401](https://github.com/dev-sec/ansible-collection-hardening/pull/401) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- make wrong password fail task [\#400](https://github.com/dev-sec/ansible-collection-hardening/pull/400) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))

## [7.2.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.2.0) (2021-02-10)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.1.1...7.2.0)

**Implemented enhancements:**

- Add variable to specify SSH host RSA key size [\#394](https://github.com/dev-sec/ansible-collection-hardening/pull/394) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([Normo](https://github.com/Normo))
- Set default for ssh host key files only when hardening the server [\#393](https://github.com/dev-sec/ansible-collection-hardening/pull/393) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([Normo](https://github.com/Normo))

**Fixed bugs:**

- A reason why instance would go in rescue mode ?  [\#267](https://github.com/dev-sec/ansible-collection-hardening/issues/267)
- fix galaxy action to update local galaxy.yml [\#395](https://github.com/dev-sec/ansible-collection-hardening/pull/395) ([Normo](https://github.com/Normo))

**Closed issues:**

- Updating version in galaxy.yml should be part of the release process [\#396](https://github.com/dev-sec/ansible-collection-hardening/issues/396)
- ssh\_hardening fail on keypair generation  [\#388](https://github.com/dev-sec/ansible-collection-hardening/issues/388)
- The system must display the date and time of the last successful account logon upon an SSH logon. [\#362](https://github.com/dev-sec/ansible-collection-hardening/issues/362)
- Error in "root password is present" step [\#326](https://github.com/dev-sec/ansible-collection-hardening/issues/326)

**Merged pull requests:**

- update ansible-lint to version 5 [\#397](https://github.com/dev-sec/ansible-collection-hardening/pull/397) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([schurzi](https://github.com/schurzi))
- fix minimum required ansible version in docs [\#390](https://github.com/dev-sec/ansible-collection-hardening/pull/390) ([schurzi](https://github.com/schurzi))

## [7.1.1](https://github.com/dev-sec/ansible-collection-hardening/tree/7.1.1) (2021-02-05)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.1.0...7.1.1)

**Fixed bugs:**

- use fqcn for community.crypto.openssh\_keypair module [\#389](https://github.com/dev-sec/ansible-collection-hardening/pull/389) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([schurzi](https://github.com/schurzi))

**Closed issues:**

- AnsibleUndefinedVariable: 'ansible\_role\_name' is undefined with 7.1.0 [\#387](https://github.com/dev-sec/ansible-collection-hardening/issues/387)

## [7.1.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.1.0) (2021-02-02)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.0.0...7.1.0)

**Implemented enhancements:**

- Default value for ssh\_max\_startups should be changed [\#366](https://github.com/dev-sec/ansible-collection-hardening/issues/366) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)]
- Comment in configuration files should state which collection was there [\#345](https://github.com/dev-sec/ansible-collection-hardening/issues/345)
- Error on applying the sysctl vars on Debian Jessy [\#230](https://github.com/dev-sec/ansible-collection-hardening/issues/230)
- add Support for OpenSSH HostCertificate config option [\#380](https://github.com/dev-sec/ansible-collection-hardening/pull/380) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([mpraeger](https://github.com/mpraeger))
- Syncookie [\#372](https://github.com/dev-sec/ansible-collection-hardening/pull/372) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([joubbi](https://github.com/joubbi))
- Sorted sysctl values and lists in READMEs alphabetically \(No functional changes\). [\#371](https://github.com/dev-sec/ansible-collection-hardening/pull/371) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([joubbi](https://github.com/joubbi))
- make auditd 'max\_log\_file' configurable [\#370](https://github.com/dev-sec/ansible-collection-hardening/pull/370) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([tgueldner-mms](https://github.com/tgueldner-mms))
- reduce maximum unauthenticated ssh sessions [\#368](https://github.com/dev-sec/ansible-collection-hardening/pull/368) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([schurzi](https://github.com/schurzi))
- add a runtime.yml to declare minimum ansible version [\#363](https://github.com/dev-sec/ansible-collection-hardening/pull/363) ([rndmh3ro](https://github.com/rndmh3ro))
- change inclusion of os specific defaults [\#353](https://github.com/dev-sec/ansible-collection-hardening/pull/353) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([schurzi](https://github.com/schurzi))
- make the os\_env\_umask variable usable [\#351](https://github.com/dev-sec/ansible-collection-hardening/pull/351) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([sprat](https://github.com/sprat))
- Fix \#348: make ssh configuration files paths configurable [\#350](https://github.com/dev-sec/ansible-collection-hardening/pull/350) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([sprat](https://github.com/sprat))
- Removed Protocol statement in later versions of sshd, since the code … [\#342](https://github.com/dev-sec/ansible-collection-hardening/pull/342) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([joubbi](https://github.com/joubbi))
- Improvements of comments in opensshd.conf.j2  \#338 [\#339](https://github.com/dev-sec/ansible-collection-hardening/pull/339) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([joubbi](https://github.com/joubbi))

**Fixed bugs:**

- Comments in opensshd.conf.j2 should be improved [\#338](https://github.com/dev-sec/ansible-collection-hardening/issues/338)
- check for correct cpu vendor in initramfs-tools [\#374](https://github.com/dev-sec/ansible-collection-hardening/pull/374) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([schurzi](https://github.com/schurzi))
- set hidepid=0 on RHEL/CentOS 7 [\#369](https://github.com/dev-sec/ansible-collection-hardening/pull/369) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([schurzi](https://github.com/schurzi))

**Closed issues:**

- initramfs-tools modules.j2 does not seem to be able to detect AMD CPUs [\#373](https://github.com/dev-sec/ansible-collection-hardening/issues/373)
- How do i install this on Centos 8? [\#367](https://github.com/dev-sec/ansible-collection-hardening/issues/367)
- hidepid=2 gives error when running systemctl on EL7 [\#364](https://github.com/dev-sec/ansible-collection-hardening/issues/364) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)]
- Allow putting the ssh/sshd config in alternative files [\#348](https://github.com/dev-sec/ansible-collection-hardening/issues/348)
- os\_env\_umask has no effect [\#344](https://github.com/dev-sec/ansible-collection-hardening/issues/344)
- Don't modify /etc/sysctl.conf [\#343](https://github.com/dev-sec/ansible-collection-hardening/issues/343) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)]

**Merged pull requests:**

- use version tag for changelog action [\#386](https://github.com/dev-sec/ansible-collection-hardening/pull/386) ([schurzi](https://github.com/schurzi))
- make release workflow manually runnable [\#384](https://github.com/dev-sec/ansible-collection-hardening/pull/384) ([schurzi](https://github.com/schurzi))
- run labeler workflow with higher privileges [\#383](https://github.com/dev-sec/ansible-collection-hardening/pull/383) ([schurzi](https://github.com/schurzi))
- remove issue labels from changelog [\#382](https://github.com/dev-sec/ansible-collection-hardening/pull/382) ([schurzi](https://github.com/schurzi))
- Added comment on top of templates about which role manages the file [\#378](https://github.com/dev-sec/ansible-collection-hardening/pull/378) [[mysql_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/mysql_hardening)] [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] [[nginx_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/nginx_hardening)] ([joubbi](https://github.com/joubbi))
- Regenerate RSA key with size 4096 bits [\#376](https://github.com/dev-sec/ansible-collection-hardening/pull/376) ([ssttehrani](https://github.com/ssttehrani))
- fix second changelog generation task, too [\#349](https://github.com/dev-sec/ansible-collection-hardening/pull/349) ([rndmh3ro](https://github.com/rndmh3ro))
- fix changelog generation [\#341](https://github.com/dev-sec/ansible-collection-hardening/pull/341) ([rndmh3ro](https://github.com/rndmh3ro))
- Improve README for ssh\_hardening [\#335](https://github.com/dev-sec/ansible-collection-hardening/pull/335) [[ssh_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/ssh_hardening)] ([szEvEz](https://github.com/szEvEz))

## [7.0.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.0.0) (2020-11-11)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/a9591764206b79a4ed324bb8576151ebac0127b1...7.0.0)

**Breaking changes:**

- Move all roles to one single collection [\#332](https://github.com/dev-sec/ansible-collection-hardening/pull/332) ([rndmh3ro](https://github.com/rndmh3ro))

**Implemented enhancements:**

- Breaking change in ansible-lint - set file permissions explicitly [\#299](https://github.com/dev-sec/ansible-collection-hardening/issues/299) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)]
- Configure audit=1 for more accurate auid auditing [\#253](https://github.com/dev-sec/ansible-collection-hardening/issues/253)
- Add Debian Buster support for ansible-os-hardening [\#233](https://github.com/dev-sec/ansible-collection-hardening/issues/233)
- Add CentOS 8 support for ansible-os-hardening [\#232](https://github.com/dev-sec/ansible-collection-hardening/issues/232)
- Speed up "minimize access on found files" task [\#208](https://github.com/dev-sec/ansible-collection-hardening/issues/208)
- Fedora support? [\#163](https://github.com/dev-sec/ansible-collection-hardening/issues/163)
- Update some RH settings in this role [\#155](https://github.com/dev-sec/ansible-collection-hardening/issues/155)
- Add selinux configuration [\#154](https://github.com/dev-sec/ansible-collection-hardening/issues/154)
- Warning about "include" for tasks for ansible-playbook 2.4.0 \(devel f0a5854e39\) [\#131](https://github.com/dev-sec/ansible-collection-hardening/issues/131)
- Removal of core dump hardening configuration if core dumps are allowed [\#129](https://github.com/dev-sec/ansible-collection-hardening/issues/129)
- Description of the Ansible roles of dev-sec says "This Ansible playbook" [\#97](https://github.com/dev-sec/ansible-collection-hardening/issues/97)
- Improve Documentation [\#315](https://github.com/dev-sec/ansible-collection-hardening/pull/315) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([schurzi](https://github.com/schurzi))
- Arch support [\#303](https://github.com/dev-sec/ansible-collection-hardening/pull/303) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([rndmh3ro](https://github.com/rndmh3ro))
- fix linting for molecule [\#301](https://github.com/dev-sec/ansible-collection-hardening/pull/301) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([schurzi](https://github.com/schurzi))
- file permissions explicitly defined [\#300](https://github.com/dev-sec/ansible-collection-hardening/pull/300) [[os_hardening](https://github.com/dev-sec/ansible-collection-hardening/labels/os_hardening)] ([danielkubat](https://github.com/danielkubat))
- Optimize and unify when clause [\#295](https://github.com/dev-sec/ansible-collection-hardening/pull/295) ([Alexhha](https://github.com/Alexhha))
- use find module instead of shell [\#294](https://github.com/dev-sec/ansible-collection-hardening/pull/294) ([danielkubat](https://github.com/danielkubat))
- improve testing [\#287](https://github.com/dev-sec/ansible-collection-hardening/pull/287) ([schurzi](https://github.com/schurzi))
- Mount proc filesystem using hidepid option [\#283](https://github.com/dev-sec/ansible-collection-hardening/pull/283) ([alegrey91](https://github.com/alegrey91))
- unify changelog and release actions [\#279](https://github.com/dev-sec/ansible-collection-hardening/pull/279) ([rndmh3ro](https://github.com/rndmh3ro))
- purge insecure packages [\#275](https://github.com/dev-sec/ansible-collection-hardening/pull/275) ([chris-rock](https://github.com/chris-rock))
- add changelog and release workflow [\#271](https://github.com/dev-sec/ansible-collection-hardening/pull/271) ([rndmh3ro](https://github.com/rndmh3ro))
- github action for changelog generation [\#270](https://github.com/dev-sec/ansible-collection-hardening/pull/270) ([rndmh3ro](https://github.com/rndmh3ro))
- Make useradd defaults in login.defs dependent on OS [\#266](https://github.com/dev-sec/ansible-collection-hardening/pull/266) ([aisbergg](https://github.com/aisbergg))
- Add kernel hardening parameters from Tails and CIS Benchmark [\#263](https://github.com/dev-sec/ansible-collection-hardening/pull/263) ([kravietz](https://github.com/kravietz))
- add ansible-lint [\#262](https://github.com/dev-sec/ansible-collection-hardening/pull/262) ([rndmh3ro](https://github.com/rndmh3ro))
- Remove trailing space [\#261](https://github.com/dev-sec/ansible-collection-hardening/pull/261) ([kravietz](https://github.com/kravietz))
- Add kernel parameter information to README [\#259](https://github.com/dev-sec/ansible-collection-hardening/pull/259) ([jaredledvina](https://github.com/jaredledvina))
- Remove trailing whitespaces \(ansible-lint 201\) [\#254](https://github.com/dev-sec/ansible-collection-hardening/pull/254) ([kravietz](https://github.com/kravietz))
- Standardize the var ordering [\#251](https://github.com/dev-sec/ansible-collection-hardening/pull/251) ([dustinmiller](https://github.com/dustinmiller))
- Add intial support for OpenSUSE [\#250](https://github.com/dev-sec/ansible-collection-hardening/pull/250) ([dustinmiller](https://github.com/dustinmiller))
- Make max\_log\_file\_action for auditd configurable [\#246](https://github.com/dev-sec/ansible-collection-hardening/pull/246) ([jandd](https://github.com/jandd))
- Add exception in sysctl task [\#240](https://github.com/dev-sec/ansible-collection-hardening/pull/240) ([ghost](https://github.com/ghost))
- Fedora - Use new auto ansible\_python\_interpreter for dnf [\#239](https://github.com/dev-sec/ansible-collection-hardening/pull/239) ([jaredledvina](https://github.com/jaredledvina))
- add test support for CentOS8 [\#237](https://github.com/dev-sec/ansible-collection-hardening/pull/237) ([yeoldegrove](https://github.com/yeoldegrove))
- Support configuring SELinux and default to enforcing [\#236](https://github.com/dev-sec/ansible-collection-hardening/pull/236) ([jaredledvina](https://github.com/jaredledvina))
- Add test support for debian buster [\#234](https://github.com/dev-sec/ansible-collection-hardening/pull/234) ([123Haynes](https://github.com/123Haynes))
- Changed local var name to a less common one [\#231](https://github.com/dev-sec/ansible-collection-hardening/pull/231) ([rgarrigue](https://github.com/rgarrigue))
- Use ansible facts for vars [\#226](https://github.com/dev-sec/ansible-collection-hardening/pull/226) ([joshuatalb](https://github.com/joshuatalb))
- Fix deprecation warnings in Ansible 2.8 [\#224](https://github.com/dev-sec/ansible-collection-hardening/pull/224) ([Normo](https://github.com/Normo))
- add docs to find-task in minimize access. fix \#219 [\#220](https://github.com/dev-sec/ansible-collection-hardening/pull/220) ([rndmh3ro](https://github.com/rndmh3ro))
- remove eol'd OS and add new [\#217](https://github.com/dev-sec/ansible-collection-hardening/pull/217) ([rndmh3ro](https://github.com/rndmh3ro))
- Add note about docker under warning [\#214](https://github.com/dev-sec/ansible-collection-hardening/pull/214) ([ChrisMcKee](https://github.com/ChrisMcKee))
- change minimize access tasks to speed them up [\#209](https://github.com/dev-sec/ansible-collection-hardening/pull/209) ([rndmh3ro](https://github.com/rndmh3ro))
- Added fedora support [\#206](https://github.com/dev-sec/ansible-collection-hardening/pull/206) ([jonaswre](https://github.com/jonaswre))
- Pass package list directly to apt and yum modules without using with\_items loop [\#200](https://github.com/dev-sec/ansible-collection-hardening/pull/200) ([Normo](https://github.com/Normo))
- add ubuntu 1804 support [\#196](https://github.com/dev-sec/ansible-collection-hardening/pull/196) ([rndmh3ro](https://github.com/rndmh3ro))
- add option to disable auditd [\#192](https://github.com/dev-sec/ansible-collection-hardening/pull/192) ([rndmh3ro](https://github.com/rndmh3ro))
- fix problems with efi and vfat [\#190](https://github.com/dev-sec/ansible-collection-hardening/pull/190) ([rndmh3ro](https://github.com/rndmh3ro))
- added os\_hardening\_enabled flag [\#186](https://github.com/dev-sec/ansible-collection-hardening/pull/186) ([jcheroske](https://github.com/jcheroske))
- add amazon run opts to travis [\#183](https://github.com/dev-sec/ansible-collection-hardening/pull/183) ([rndmh3ro](https://github.com/rndmh3ro))
- use package instead of yum and apt [\#180](https://github.com/dev-sec/ansible-collection-hardening/pull/180) ([rndmh3ro](https://github.com/rndmh3ro))
- add oracle7 to travis [\#178](https://github.com/dev-sec/ansible-collection-hardening/pull/178) ([rndmh3ro](https://github.com/rndmh3ro))
- fix wrong permissions passwdqc \#170 [\#176](https://github.com/dev-sec/ansible-collection-hardening/pull/176) ([rndmh3ro](https://github.com/rndmh3ro))
- ipv4 forwarding comment is inconsistent with example [\#174](https://github.com/dev-sec/ansible-collection-hardening/pull/174) ([carchrae](https://github.com/carchrae))
- Rename pam\_passwdqd.j2 to pam\_passwdqc.j2 [\#172](https://github.com/dev-sec/ansible-collection-hardening/pull/172) ([martinbydefault](https://github.com/martinbydefault))
- Use package state 'present' since 'installed' is deprecated [\#168](https://github.com/dev-sec/ansible-collection-hardening/pull/168) ([Normo](https://github.com/Normo))
- Update syntax to Ansible 2.4 [\#161](https://github.com/dev-sec/ansible-collection-hardening/pull/161) ([thomasjpfan](https://github.com/thomasjpfan))
- add amazon linux testing [\#160](https://github.com/dev-sec/ansible-collection-hardening/pull/160) ([rndmh3ro](https://github.com/rndmh3ro))
- Add support for Amazon Linux [\#158](https://github.com/dev-sec/ansible-collection-hardening/pull/158) ([woneill](https://github.com/woneill))
- Don't create home for system accounts [\#156](https://github.com/dev-sec/ansible-collection-hardening/pull/156) ([oakey-b1](https://github.com/oakey-b1))
- Prevent disabling of filesystems via whitelist [\#153](https://github.com/dev-sec/ansible-collection-hardening/pull/153) ([manuelprinz](https://github.com/manuelprinz))
- Add kernel hardening settings from Ubuntu /etc/sysctl.d [\#150](https://github.com/dev-sec/ansible-collection-hardening/pull/150) ([kravietz](https://github.com/kravietz))
- Removal of core dump hardening configuration if core dumps are allowed [\#146](https://github.com/dev-sec/ansible-collection-hardening/pull/146) ([martinbydefault](https://github.com/martinbydefault))
- install and configure auditd - fix inspec package-08 [\#144](https://github.com/dev-sec/ansible-collection-hardening/pull/144) ([rndmh3ro](https://github.com/rndmh3ro))
- add missing sysctl parameter [\#143](https://github.com/dev-sec/ansible-collection-hardening/pull/143) ([rndmh3ro](https://github.com/rndmh3ro))
- update readme [\#139](https://github.com/dev-sec/ansible-collection-hardening/pull/139) ([rndmh3ro](https://github.com/rndmh3ro))
- add modprobe template, control os-10 [\#138](https://github.com/dev-sec/ansible-collection-hardening/pull/138) ([rndmh3ro](https://github.com/rndmh3ro))
- new task for delete netrc files, control os-09 [\#137](https://github.com/dev-sec/ansible-collection-hardening/pull/137) ([rndmh3ro](https://github.com/rndmh3ro))
- add passwd task, control os-03 [\#136](https://github.com/dev-sec/ansible-collection-hardening/pull/136) ([rndmh3ro](https://github.com/rndmh3ro))
- remove prelink package, control package-09 [\#135](https://github.com/dev-sec/ansible-collection-hardening/pull/135) ([rndmh3ro](https://github.com/rndmh3ro))
- style update [\#134](https://github.com/dev-sec/ansible-collection-hardening/pull/134) ([rndmh3ro](https://github.com/rndmh3ro))
- Remove deprecated include for static tasks and use instead import\_tasks fix \#131 [\#132](https://github.com/dev-sec/ansible-collection-hardening/pull/132) ([HelioCampos](https://github.com/HelioCampos))
- Fix ansible.cfg and use comment filter [\#130](https://github.com/dev-sec/ansible-collection-hardening/pull/130) ([fazlearefin](https://github.com/fazlearefin))
- install initramfs-tools [\#114](https://github.com/dev-sec/ansible-collection-hardening/pull/114) ([rndmh3ro](https://github.com/rndmh3ro))
- omit empty variables [\#106](https://github.com/dev-sec/ansible-collection-hardening/pull/106) ([rndmh3ro](https://github.com/rndmh3ro))
- Supports --check mode [\#93](https://github.com/dev-sec/ansible-collection-hardening/pull/93) ([conorsch](https://github.com/conorsch))
- Adds support for CentOS 7 [\#91](https://github.com/dev-sec/ansible-collection-hardening/pull/91) ([conorsch](https://github.com/conorsch))
- Docker [\#90](https://github.com/dev-sec/ansible-collection-hardening/pull/90) ([rndmh3ro](https://github.com/rndmh3ro))
- debian 8 support [\#88](https://github.com/dev-sec/ansible-collection-hardening/pull/88) ([rndmh3ro](https://github.com/rndmh3ro))
- Ufw manage defaults [\#85](https://github.com/dev-sec/ansible-collection-hardening/pull/85) ([fitz123](https://github.com/fitz123))
- replace ignore\_errors to failed\_when to supress ugly error warnings [\#81](https://github.com/dev-sec/ansible-collection-hardening/pull/81) ([fitz123](https://github.com/fitz123))
- fix bare variables usage for loops [\#79](https://github.com/dev-sec/ansible-collection-hardening/pull/79) ([fitz123](https://github.com/fitz123))
- update platforms in meta-file [\#69](https://github.com/dev-sec/ansible-collection-hardening/pull/69) ([rndmh3ro](https://github.com/rndmh3ro))
- add webhook for ansible galaxy [\#68](https://github.com/dev-sec/ansible-collection-hardening/pull/68) ([rndmh3ro](https://github.com/rndmh3ro))
- Move sysctl vars to defaults [\#67](https://github.com/dev-sec/ansible-collection-hardening/pull/67) ([rndmh3ro](https://github.com/rndmh3ro))
- make sys\_uid and sys\_gid configurable [\#62](https://github.com/dev-sec/ansible-collection-hardening/pull/62) ([rndmh3ro](https://github.com/rndmh3ro))
- Ansible 2.0 support [\#59](https://github.com/dev-sec/ansible-collection-hardening/pull/59) ([rndmh3ro](https://github.com/rndmh3ro))
- use inspec as test framework [\#58](https://github.com/dev-sec/ansible-collection-hardening/pull/58) ([chris-rock](https://github.com/chris-rock))
- Packages as attributes [\#57](https://github.com/dev-sec/ansible-collection-hardening/pull/57) ([rndmh3ro](https://github.com/rndmh3ro))
- Change categories to tags for upcoming ansible 2.0 [\#56](https://github.com/dev-sec/ansible-collection-hardening/pull/56) ([rndmh3ro](https://github.com/rndmh3ro))
- Add SINGLE and PROMPT parameters. [\#55](https://github.com/dev-sec/ansible-collection-hardening/pull/55) ([rndmh3ro](https://github.com/rndmh3ro))
- add changelog generator [\#54](https://github.com/dev-sec/ansible-collection-hardening/pull/54) ([chris-rock](https://github.com/chris-rock))

**Fixed bugs:**

- Task "set 10.hardcore.conf perms to 0400 and root ownership" fails in check mode [\#313](https://github.com/dev-sec/ansible-collection-hardening/issues/313)
- Inconsistent use of role vars/role defaults [\#284](https://github.com/dev-sec/ansible-collection-hardening/issues/284)
- Is it safe to use on Debian 10? The build is failing. [\#281](https://github.com/dev-sec/ansible-collection-hardening/issues/281)
- /etc/login.defs alters centos 7/8 default values [\#265](https://github.com/dev-sec/ansible-collection-hardening/issues/265)
- Invalid Conditionals in user\_accounts.yml [\#255](https://github.com/dev-sec/ansible-collection-hardening/issues/255)
- `auth-system` related files are created for non-RHEL systems \(e.g. Debian\) [\#247](https://github.com/dev-sec/ansible-collection-hardening/issues/247)
- NSA website links are stale [\#227](https://github.com/dev-sec/ansible-collection-hardening/issues/227)
- Running ansible on python3 throughs "TypeError: '\<=' not supported between instances of 'str' and 'int'"  [\#223](https://github.com/dev-sec/ansible-collection-hardening/issues/223)
- \[lots of\] deprecation warnings in Ansible 2.8 [\#221](https://github.com/dev-sec/ansible-collection-hardening/issues/221)
- `squash_actions` deprecation warning [\#218](https://github.com/dev-sec/ansible-collection-hardening/issues/218)
- login.defs.j2 template: ENV\_PATH is missing ':' before variable substitution [\#202](https://github.com/dev-sec/ansible-collection-hardening/issues/202)
- auditd causing v5.0 to fail on unpriviledged LXC's [\#191](https://github.com/dev-sec/ansible-collection-hardening/issues/191)
- Setting os\_security\_users\_allow has no effect [\#175](https://github.com/dev-sec/ansible-collection-hardening/issues/175)
- minimize\_access: maximum recursion depth exceeded on Ansible 2.5 [\#171](https://github.com/dev-sec/ansible-collection-hardening/issues/171)
- wrong permissions passwdqc [\#170](https://github.com/dev-sec/ansible-collection-hardening/issues/170)
- 'sysctl\_rhel\_config' is undefined [\#167](https://github.com/dev-sec/ansible-collection-hardening/issues/167)
- Update deprecated `include` statements [\#166](https://github.com/dev-sec/ansible-collection-hardening/issues/166)
- Strongly recommend against disabling vfat by default [\#162](https://github.com/dev-sec/ansible-collection-hardening/issues/162)
- bug in ufw.j2 template [\#151](https://github.com/dev-sec/ansible-collection-hardening/issues/151)
- Add a "don't fail on error" switch ? [\#148](https://github.com/dev-sec/ansible-collection-hardening/issues/148)
- System completely unresponsive after role execution [\#145](https://github.com/dev-sec/ansible-collection-hardening/issues/145)
- Why is rsync removed? [\#141](https://github.com/dev-sec/ansible-collection-hardening/issues/141)
- RHEL 7.4: Too many setuid bits removed [\#140](https://github.com/dev-sec/ansible-collection-hardening/issues/140)
- Change system accounts not on the user provided ignore-list items are not JSON serializable [\#125](https://github.com/dev-sec/ansible-collection-hardening/issues/125)
- playbook makes OS undetectable [\#124](https://github.com/dev-sec/ansible-collection-hardening/issues/124)
- Centos7/RHEL7: Exec shield is enabled by default and not manageable anymore by sysctl.conf [\#118](https://github.com/dev-sec/ansible-collection-hardening/issues/118)
- Could not find gem 'ruby \(\>= 2.1.0\)' [\#116](https://github.com/dev-sec/ansible-collection-hardening/issues/116)
- os\_security\_kernel\_enable\_sysrq is not implemented [\#115](https://github.com/dev-sec/ansible-collection-hardening/issues/115)
- The task sysctl fails when /etc/initramfs-tools is not present [\#111](https://github.com/dev-sec/ansible-collection-hardening/issues/111)
- The role fails when conditionally included [\#105](https://github.com/dev-sec/ansible-collection-hardening/issues/105)
- Deprecation warning always\_run [\#103](https://github.com/dev-sec/ansible-collection-hardening/issues/103)
- CentOS 7 selinux dependencies [\#102](https://github.com/dev-sec/ansible-collection-hardening/issues/102)
- ubuntu xenial warning during activate gpg-check for yum-repos [\#99](https://github.com/dev-sec/ansible-collection-hardening/issues/99)
- rhel\_system\_auth.j2 is still using pam\_passwdqc.so for CentOS 7 [\#98](https://github.com/dev-sec/ansible-collection-hardening/issues/98)
- Centos 7.1 fails at  \[Change various sysctl-settings on rhel-hosts...\] [\#74](https://github.com/dev-sec/ansible-collection-hardening/issues/74)
- Enable pam\_pwquality in rhel-family \> 7 [\#73](https://github.com/dev-sec/ansible-collection-hardening/issues/73)
- Hardening fails on Centos 7.1 at task 'minimize access' [\#71](https://github.com/dev-sec/ansible-collection-hardening/issues/71)
- "irc" user always changed after reboot [\#53](https://github.com/dev-sec/ansible-collection-hardening/issues/53)
- use touch for 10.hardcore.conf to avoid problems with dry-run [\#314](https://github.com/dev-sec/ansible-collection-hardening/pull/314) ([schurzi](https://github.com/schurzi))
- use touch with no date changes [\#310](https://github.com/dev-sec/ansible-collection-hardening/pull/310) ([rndmh3ro](https://github.com/rndmh3ro))
- do not touch sysctl file to avoid idempotency problems [\#309](https://github.com/dev-sec/ansible-collection-hardening/pull/309) ([rndmh3ro](https://github.com/rndmh3ro))
- replace module parameter fixed [\#297](https://github.com/dev-sec/ansible-collection-hardening/pull/297) ([danielkubat](https://github.com/danielkubat))
- Addressing issue \#255 [\#258](https://github.com/dev-sec/ansible-collection-hardening/pull/258) ([ljkimmel](https://github.com/ljkimmel))
- Fix \#247, cleanup conditions [\#248](https://github.com/dev-sec/ansible-collection-hardening/pull/248) ([fernandezcuesta](https://github.com/fernandezcuesta))
- Fix error on applying the sysctl vars on containers [\#243](https://github.com/dev-sec/ansible-collection-hardening/pull/243) ([ghost](https://github.com/ghost))
- Update location of NSA RHEL 5 Guide [\#235](https://github.com/dev-sec/ansible-collection-hardening/pull/235) ([jaredledvina](https://github.com/jaredledvina))
- Fix typo [\#212](https://github.com/dev-sec/ansible-collection-hardening/pull/212) ([ruslo](https://github.com/ruslo))
- Update modprobe to 0644 [\#211](https://github.com/dev-sec/ansible-collection-hardening/pull/211) ([joshuatalb](https://github.com/joshuatalb))
- Test Kitchen Vagrant Fixes [\#210](https://github.com/dev-sec/ansible-collection-hardening/pull/210) ([joshuatalb](https://github.com/joshuatalb))
- \[readme\] Update documentation link [\#207](https://github.com/dev-sec/ansible-collection-hardening/pull/207) ([pmav99](https://github.com/pmav99))
- fix ansible lint remarks [\#204](https://github.com/dev-sec/ansible-collection-hardening/pull/204) ([rndmh3ro](https://github.com/rndmh3ro))
- add colon to user env paths - fix \#202 [\#203](https://github.com/dev-sec/ansible-collection-hardening/pull/203) ([rndmh3ro](https://github.com/rndmh3ro))
- add /usr/bin/su to suid\_guid whitelist [\#199](https://github.com/dev-sec/ansible-collection-hardening/pull/199) ([ccolic](https://github.com/ccolic))
- ensure that permissions to su-binary are not restricted to root user and group only, if os\_security\_users\_allow contains the value change\_user [\#197](https://github.com/dev-sec/ansible-collection-hardening/pull/197) ([szEvEz](https://github.com/szEvEz))
- do not install passwdqc on amazon linux [\#189](https://github.com/dev-sec/ansible-collection-hardening/pull/189) ([rndmh3ro](https://github.com/rndmh3ro))
- add back run opts for debian 8 in travis [\#184](https://github.com/dev-sec/ansible-collection-hardening/pull/184) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix core dump config file creation when core dumps are disabled [\#182](https://github.com/dev-sec/ansible-collection-hardening/pull/182) ([Normo](https://github.com/Normo))
- change minimize access method [\#181](https://github.com/dev-sec/ansible-collection-hardening/pull/181) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix errors produced by ansible-lint [\#159](https://github.com/dev-sec/ansible-collection-hardening/pull/159) ([zbrojny120](https://github.com/zbrojny120))
- replace single ticks with double ticks. fix \#151 [\#152](https://github.com/dev-sec/ansible-collection-hardening/pull/152) ([rndmh3ro](https://github.com/rndmh3ro))
- fixed tag [\#149](https://github.com/dev-sec/ansible-collection-hardening/pull/149) ([martinbydefault](https://github.com/martinbydefault))
- Remove rsync from package blacklist [\#142](https://github.com/dev-sec/ansible-collection-hardening/pull/142) ([duk3luk3](https://github.com/duk3luk3))
- Updates "tags" parameters on includes in main.yml [\#66](https://github.com/dev-sec/ansible-collection-hardening/pull/66) ([conorsch](https://github.com/conorsch))
- Suid set def var, fix \#64 [\#63](https://github.com/dev-sec/ansible-collection-hardening/pull/63) ([rndmh3ro](https://github.com/rndmh3ro))

**Closed issues:**

- Any planned support for RHEL/CentOS 8? [\#298](https://github.com/dev-sec/ansible-collection-hardening/issues/298)
- Consider using find module instead of shell [\#293](https://github.com/dev-sec/ansible-collection-hardening/issues/293)
- Optimize logical OR in when clause [\#292](https://github.com/dev-sec/ansible-collection-hardening/issues/292)
- vfat added to dev-sec.conf, but efi is used [\#288](https://github.com/dev-sec/ansible-collection-hardening/issues/288)
- The state of the galaxy release [\#269](https://github.com/dev-sec/ansible-collection-hardening/issues/269)
- OpenSUSE Support [\#249](https://github.com/dev-sec/ansible-collection-hardening/issues/249)
- ansible hardening fails on ubuntu 16.04 with msg": "ERROR! 'sysctl\_rhel\_config' is undefined [\#147](https://github.com/dev-sec/ansible-collection-hardening/issues/147)
- Enhancement: Test with TestInfra and Molecule [\#128](https://github.com/dev-sec/ansible-collection-hardening/issues/128)
- Enhancement: Pin python dependencies for development and testing [\#127](https://github.com/dev-sec/ansible-collection-hardening/issues/127)
- Update readme to include baselines [\#122](https://github.com/dev-sec/ansible-collection-hardening/issues/122)
- Error running on RHEL 7 due to syntax issues [\#112](https://github.com/dev-sec/ansible-collection-hardening/issues/112)
- disable password age [\#109](https://github.com/dev-sec/ansible-collection-hardening/issues/109)
- Permissions on /etc/shadow can lock out GUI users [\#86](https://github.com/dev-sec/ansible-collection-hardening/issues/86)
- network related sysctl rewritten by ufw in ubuntu  [\#82](https://github.com/dev-sec/ansible-collection-hardening/issues/82)
- ansible \>= 2.0 complains: Using bare variables is deprecated [\#78](https://github.com/dev-sec/ansible-collection-hardening/issues/78)
- Hardening fails on Centos 7.1 at task 'remove suid/sgid bit from all binaries except in system and user whitelist' [\#72](https://github.com/dev-sec/ansible-collection-hardening/issues/72)
- ansible 2.0 | "remove suid/sgid" task fails [\#64](https://github.com/dev-sec/ansible-collection-hardening/issues/64)
- Custom sysctl [\#50](https://github.com/dev-sec/ansible-collection-hardening/issues/50)
- Fix directory structure. [\#48](https://github.com/dev-sec/ansible-collection-hardening/issues/48)
- pam auth update error [\#47](https://github.com/dev-sec/ansible-collection-hardening/issues/47)
- ansible-os-hardening/tasks/minimize\_access.yml [\#38](https://github.com/dev-sec/ansible-collection-hardening/issues/38)
- Role configuration. vars/main.yml? [\#34](https://github.com/dev-sec/ansible-collection-hardening/issues/34)
- Sysctl reloading [\#18](https://github.com/dev-sec/ansible-collection-hardening/issues/18)
- Add conditions for disabling of ip forwarding [\#15](https://github.com/dev-sec/ansible-collection-hardening/issues/15)
- Disable System Accounts [\#6](https://github.com/dev-sec/ansible-collection-hardening/issues/6)

**Merged pull requests:**

- prettier markdown files action added [\#322](https://github.com/dev-sec/ansible-collection-hardening/pull/322) ([danielkubat](https://github.com/danielkubat))
- adjust permissions on shadow file on suse [\#311](https://github.com/dev-sec/ansible-collection-hardening/pull/311) ([rndmh3ro](https://github.com/rndmh3ro))
- fix fedora build [\#296](https://github.com/dev-sec/ansible-collection-hardening/pull/296) ([rndmh3ro](https://github.com/rndmh3ro))
- do not blacklist used filesystems [\#289](https://github.com/dev-sec/ansible-collection-hardening/pull/289) ([schurzi](https://github.com/schurzi))
- move hidepid vars into defaults so theyre overwritable [\#285](https://github.com/dev-sec/ansible-collection-hardening/pull/285) ([rndmh3ro](https://github.com/rndmh3ro))
- install procps in debian so sysctl.conf exists [\#282](https://github.com/dev-sec/ansible-collection-hardening/pull/282) ([rndmh3ro](https://github.com/rndmh3ro))
- move defaults to os-specific vars [\#157](https://github.com/dev-sec/ansible-collection-hardening/pull/157) ([rndmh3ro](https://github.com/rndmh3ro))
- Converts set to JSON-serializable list [\#126](https://github.com/dev-sec/ansible-collection-hardening/pull/126) ([pestaa](https://github.com/pestaa))
- add more sysctl settings, allow overwriting [\#120](https://github.com/dev-sec/ansible-collection-hardening/pull/120) ([rndmh3ro](https://github.com/rndmh3ro))
- remove execshield sysctl-parameter on rhel7 [\#119](https://github.com/dev-sec/ansible-collection-hardening/pull/119) ([rndmh3ro](https://github.com/rndmh3ro))
- change shadow owner in debian systems [\#117](https://github.com/dev-sec/ansible-collection-hardening/pull/117) ([rndmh3ro](https://github.com/rndmh3ro))
- Rhel7 [\#113](https://github.com/dev-sec/ansible-collection-hardening/pull/113) ([tyrken](https://github.com/tyrken))
- use new Docker images [\#110](https://github.com/dev-sec/ansible-collection-hardening/pull/110) ([rndmh3ro](https://github.com/rndmh3ro))
- Don’t refer to this role as "playbook" in the role description [\#104](https://github.com/dev-sec/ansible-collection-hardening/pull/104) ([ypid](https://github.com/ypid))
- update template [\#101](https://github.com/dev-sec/ansible-collection-hardening/pull/101) ([rndmh3ro](https://github.com/rndmh3ro))
- fix deprecation warning for undefined error. \#99 [\#100](https://github.com/dev-sec/ansible-collection-hardening/pull/100) ([rndmh3ro](https://github.com/rndmh3ro))
- add rhel7 pam\_pwquality. fix \#73 [\#94](https://github.com/dev-sec/ansible-collection-hardening/pull/94) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix a formatting issue in readme. [\#92](https://github.com/dev-sec/ansible-collection-hardening/pull/92) ([vivekagr](https://github.com/vivekagr))
- Permits overriding permissions on /etc/shadow [\#89](https://github.com/dev-sec/ansible-collection-hardening/pull/89) ([conorsch](https://github.com/conorsch))
- Release 3.0.0 [\#75](https://github.com/dev-sec/ansible-collection-hardening/pull/75) ([rndmh3ro](https://github.com/rndmh3ro))
- Add explicit role-path to kitchen.yml [\#52](https://github.com/dev-sec/ansible-collection-hardening/pull/52) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix pam passwdqc template [\#51](https://github.com/dev-sec/ansible-collection-hardening/pull/51) ([rndmh3ro](https://github.com/rndmh3ro))
- New dir layout [\#49](https://github.com/dev-sec/ansible-collection-hardening/pull/49) ([rndmh3ro](https://github.com/rndmh3ro))
- remove duplicate "update pam" task [\#46](https://github.com/dev-sec/ansible-collection-hardening/pull/46) ([fitz123](https://github.com/fitz123))
- Fix stuck in case pam files was updated before by force update [\#45](https://github.com/dev-sec/ansible-collection-hardening/pull/45) ([fitz123](https://github.com/fitz123))
- Fix nologin shell path [\#44](https://github.com/dev-sec/ansible-collection-hardening/pull/44) ([fitz123](https://github.com/fitz123))
- improved travis-tests to cover more cases [\#42](https://github.com/dev-sec/ansible-collection-hardening/pull/42) ([rndmh3ro](https://github.com/rndmh3ro))
- Update kitchen-ansible, remove separate debian install [\#40](https://github.com/dev-sec/ansible-collection-hardening/pull/40) ([rndmh3ro](https://github.com/rndmh3ro))
- Add mode to su-binary task. Fix \#38 [\#39](https://github.com/dev-sec/ansible-collection-hardening/pull/39) ([rndmh3ro](https://github.com/rndmh3ro))
- update common kitchen.yml platforms \(ansible\), kitchen\_debian.yml platforms \(ansible\) [\#37](https://github.com/dev-sec/ansible-collection-hardening/pull/37) ([chris-rock](https://github.com/chris-rock))
- Change oneliner if-statements to be more readable [\#36](https://github.com/dev-sec/ansible-collection-hardening/pull/36) ([rndmh3ro](https://github.com/rndmh3ro))
- Separate system-vars from editable vars. Fix \#34 [\#35](https://github.com/dev-sec/ansible-collection-hardening/pull/35) ([rndmh3ro](https://github.com/rndmh3ro))
- Create limits.d-directory if it does not exist. [\#33](https://github.com/dev-sec/ansible-collection-hardening/pull/33) ([rndmh3ro](https://github.com/rndmh3ro))
- Add correct CONTRIB-file [\#32](https://github.com/dev-sec/ansible-collection-hardening/pull/32) ([rndmh3ro](https://github.com/rndmh3ro))
- Add Ansible Galaxy badge [\#31](https://github.com/dev-sec/ansible-collection-hardening/pull/31) ([rndmh3ro](https://github.com/rndmh3ro))
-  Update readme, todo, changelog, vars [\#30](https://github.com/dev-sec/ansible-collection-hardening/pull/30) ([rndmh3ro](https://github.com/rndmh3ro))
- List-cleanup and follow symlinks added [\#29](https://github.com/dev-sec/ansible-collection-hardening/pull/29) ([rndmh3ro](https://github.com/rndmh3ro))
- Add module configuration [\#28](https://github.com/dev-sec/ansible-collection-hardening/pull/28) ([rndmh3ro](https://github.com/rndmh3ro))
- Fix two sysctl-settings [\#27](https://github.com/dev-sec/ansible-collection-hardening/pull/27) ([rndmh3ro](https://github.com/rndmh3ro))
- Add meta-files for Ansible Galaxy [\#26](https://github.com/dev-sec/ansible-collection-hardening/pull/26) ([rndmh3ro](https://github.com/rndmh3ro))
- Disable System Accounts. Fix \#6 [\#25](https://github.com/dev-sec/ansible-collection-hardening/pull/25) ([rndmh3ro](https://github.com/rndmh3ro))
- Use changed\_when to avoid changed tasks [\#24](https://github.com/dev-sec/ansible-collection-hardening/pull/24) ([rndmh3ro](https://github.com/rndmh3ro))
- Delete authconfig-task on rhel-systems [\#23](https://github.com/dev-sec/ansible-collection-hardening/pull/23) ([rndmh3ro](https://github.com/rndmh3ro))
- Add missing rhosts-include task [\#21](https://github.com/dev-sec/ansible-collection-hardening/pull/21) ([rndmh3ro](https://github.com/rndmh3ro))
- Change sysctl-task. Fix \#18 [\#20](https://github.com/dev-sec/ansible-collection-hardening/pull/20) ([rndmh3ro](https://github.com/rndmh3ro))
- Add travis-support [\#17](https://github.com/dev-sec/ansible-collection-hardening/pull/17) ([rndmh3ro](https://github.com/rndmh3ro))
- Add conditions for various tasks. Fix \#15 [\#16](https://github.com/dev-sec/ansible-collection-hardening/pull/16) ([rndmh3ro](https://github.com/rndmh3ro))
- fix configuration of playbook path [\#14](https://github.com/dev-sec/ansible-collection-hardening/pull/14) ([chris-rock](https://github.com/chris-rock))
- Make tasks clearer [\#13](https://github.com/dev-sec/ansible-collection-hardening/pull/13) ([rndmh3ro](https://github.com/rndmh3ro))
- Add remove suid/sgid function [\#12](https://github.com/dev-sec/ansible-collection-hardening/pull/12) ([rndmh3ro](https://github.com/rndmh3ro))
- Add task to remove unused repos and pkgs [\#11](https://github.com/dev-sec/ansible-collection-hardening/pull/11) ([rndmh3ro](https://github.com/rndmh3ro))
- Edit README to fit to os-hardening [\#10](https://github.com/dev-sec/ansible-collection-hardening/pull/10) ([rndmh3ro](https://github.com/rndmh3ro))
- ignore RAs on Ipv6 [\#9](https://github.com/dev-sec/ansible-collection-hardening/pull/9) ([rndmh3ro](https://github.com/rndmh3ro))
- Repair debian install script [\#8](https://github.com/dev-sec/ansible-collection-hardening/pull/8) ([rndmh3ro](https://github.com/rndmh3ro))
- Separate tasks into multiple smaller files [\#7](https://github.com/dev-sec/ansible-collection-hardening/pull/7) ([rndmh3ro](https://github.com/rndmh3ro))
- Enable gpg-check on all yum-repositories [\#5](https://github.com/dev-sec/ansible-collection-hardening/pull/5) ([rndmh3ro](https://github.com/rndmh3ro))
- Change playbook-path to accomodate test-repo [\#4](https://github.com/dev-sec/ansible-collection-hardening/pull/4) ([rndmh3ro](https://github.com/rndmh3ro))
- treat securetty config as an array [\#3](https://github.com/dev-sec/ansible-collection-hardening/pull/3) ([arlimus](https://github.com/arlimus))
- Add Securetty-support [\#2](https://github.com/dev-sec/ansible-collection-hardening/pull/2) ([rndmh3ro](https://github.com/rndmh3ro))
- Add profile.conf configuration [\#1](https://github.com/dev-sec/ansible-collection-hardening/pull/1) ([rndmh3ro](https://github.com/rndmh3ro))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
