# Changelog

## [7.0.1](https://github.com/dev-sec/ansible-collection-hardening/tree/7.0.1) (2020-12-15)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/7.0.0...7.0.1)

**Implemented enhancements:**

- Error on applying the sysctl vars on Debian Jessy [\#230](https://github.com/dev-sec/ansible-collection-hardening/issues/230)
- Improvements of comments in opensshd.conf.j2 \#338 [\#339](https://github.com/dev-sec/ansible-collection-hardening/pull/339) ([joubbi](https://github.com/joubbi))

**Closed issues:**

- Version 7.0.0 of "os-hardening" has not been published in Ansible Galaxy repository [\#340](https://github.com/dev-sec/ansible-collection-hardening/issues/340)
- Comments in opensshd.conf.j2 should be improved [\#338](https://github.com/dev-sec/ansible-collection-hardening/issues/338)
- pyinfra [\#336](https://github.com/dev-sec/ansible-collection-hardening/issues/336)
- suffix \_hardening [\#334](https://github.com/dev-sec/ansible-collection-hardening/issues/334)
- Incompatible with python 3 on CentOS [\#333](https://github.com/dev-sec/ansible-collection-hardening/issues/333)
- squashfs not being disabled then failing test [\#308](https://github.com/dev-sec/ansible-collection-hardening/issues/308)
- variable name inconsistency: ssh / sshd [\#329](https://github.com/dev-sec/ansible-collection-hardening/issues/329)
- Getting “msg”: “Destination /etc not writable” even with become: yes [\#280](https://github.com/dev-sec/ansible-collection-hardening/issues/280)

**Merged pull requests:**

- fix second changelog generation task, too [\#349](https://github.com/dev-sec/ansible-collection-hardening/pull/349) ([rndmh3ro](https://github.com/rndmh3ro))
- fix changelog generation [\#341](https://github.com/dev-sec/ansible-collection-hardening/pull/341) ([rndmh3ro](https://github.com/rndmh3ro))
- Improve README for ssh_hardening [\#335](https://github.com/dev-sec/ansible-collection-hardening/pull/335) ([szEvEz](https://github.com/szEvEz))

## [7.0.0](https://github.com/dev-sec/ansible-collection-hardening/tree/7.0.0) (2020-11-11)

[Full Changelog](https://github.com/dev-sec/ansible-collection-hardening/compare/6.2.0...7.0.0)

**Breaking changes:**

- Move all roles to one single collection [\#332](https://github.com/dev-sec/ansible-collection-hardening/pull/332) ([rndmh3ro](https://github.com/rndmh3ro))

**Implemented enhancements:**

- Breaking change in ansible-lint - set file permissions explicitly [\#299](https://github.com/dev-sec/ansible-collection-hardening/issues/299)
- Improve Documentation [\#315](https://github.com/dev-sec/ansible-collection-hardening/pull/315) ([schurzi](https://github.com/schurzi))
- Arch support [\#303](https://github.com/dev-sec/ansible-collection-hardening/pull/303) ([rndmh3ro](https://github.com/rndmh3ro))
- fix linting for molecule [\#301](https://github.com/dev-sec/ansible-collection-hardening/pull/301) ([schurzi](https://github.com/schurzi))
- file permissions explicitly defined [\#300](https://github.com/dev-sec/ansible-collection-hardening/pull/300) ([danielkubat](https://github.com/danielkubat))
- Optimize and unify when clause [\#295](https://github.com/dev-sec/ansible-collection-hardening/pull/295) ([Alexhha](https://github.com/Alexhha))
- use find module instead of shell [\#294](https://github.com/dev-sec/ansible-collection-hardening/pull/294) ([danielkubat](https://github.com/danielkubat))
- improve testing [\#287](https://github.com/dev-sec/ansible-collection-hardening/pull/287) ([schurzi](https://github.com/schurzi))
- Mount proc filesystem using hidepid option [\#283](https://github.com/dev-sec/ansible-collection-hardening/pull/283) ([alegrey91](https://github.com/alegrey91))
- unify changelog and release actions [\#279](https://github.com/dev-sec/ansible-collection-hardening/pull/279) ([rndmh3ro](https://github.com/rndmh3ro))
- purge insecure packages [\#275](https://github.com/dev-sec/ansible-collection-hardening/pull/275) ([chris-rock](https://github.com/chris-rock))
- add changelog and release workflow [\#271](https://github.com/dev-sec/ansible-collection-hardening/pull/271) ([rndmh3ro](https://github.com/rndmh3ro))

**Fixed bugs:**

- Task "set 10.hardcore.conf perms to 0400 and root ownership" fails in check mode [\#313](https://github.com/dev-sec/ansible-collection-hardening/issues/313)
- use touch for 10.hardcore.conf to avoid problems with dry-run [\#314](https://github.com/dev-sec/ansible-collection-hardening/pull/314) ([schurzi](https://github.com/schurzi))
- use touch with no date changes [\#310](https://github.com/dev-sec/ansible-collection-hardening/pull/310) ([rndmh3ro](https://github.com/rndmh3ro))
- do not touch sysctl file to avoid idempotency problems [\#309](https://github.com/dev-sec/ansible-collection-hardening/pull/309) ([rndmh3ro](https://github.com/rndmh3ro))
- replace module parameter fixed [\#297](https://github.com/dev-sec/ansible-collection-hardening/pull/297) ([danielkubat](https://github.com/danielkubat))

**Closed issues:**

- Any planned support for RHEL/CentOS 8? [\#298](https://github.com/dev-sec/ansible-collection-hardening/issues/298)

**Merged pull requests:**

- prettier markdown files action added [\#322](https://github.com/dev-sec/ansible-collection-hardening/pull/322) ([danielkubat](https://github.com/danielkubat))
- adjust permissions on shadow file on suse [\#311](https://github.com/dev-sec/ansible-collection-hardening/pull/311) ([rndmh3ro](https://github.com/rndmh3ro))
- fix fedora build [\#296](https://github.com/dev-sec/ansible-collection-hardening/pull/296) ([rndmh3ro](https://github.com/rndmh3ro))
- do not blacklist used filesystems [\#289](https://github.com/dev-sec/ansible-collection-hardening/pull/289) ([schurzi](https://github.com/schurzi))
- move hidepid vars into defaults so theyre overwritable [\#285](https://github.com/dev-sec/ansible-collection-hardening/pull/285) ([rndmh3ro](https://github.com/rndmh3ro))
- install procps in debian so sysctl.conf exists [\#282](https://github.com/dev-sec/ansible-collection-hardening/pull/282) ([rndmh3ro](https://github.com/rndmh3ro))

\* _This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)_
