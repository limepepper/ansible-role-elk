

# ansible role for Elasticsearch Logstash Kibana


|                |  Elasticsearch   |Logstash      | Kibana | Full-Stack |
|----------------|-------------------------------|-----------------------------|---|--|
|CentOS-6 |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_centos-7_default.svg)](http://buildbot:8010/#/builders/29)           |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_ubuntu-17_default.svg)](http://buildbot:8010/#/builders/29)            |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29)|[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29)
|CentOS-7 |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_centos-7_default.svg)](http://buildbot:8010/#/builders/29)           |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_ubuntu-17_default.svg)](http://buildbot:8010/#/builders/29)            |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29) |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29)
|Debian-8 |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_centos-7_default.svg)](http://buildbot:8010/#/builders/29)           |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_ubuntu-17_default.svg)](http://buildbot:8010/#/builders/29)            |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29) |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29)
|Debian-9 |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_centos-7_default.svg)](http://buildbot:8010/#/builders/29)           |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_ubuntu-17_default.svg)](http://buildbot:8010/#/builders/29)            |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29) |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29)
|Ubuntu-16 LTS |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_centos-7_default.svg)](http://buildbot:8010/#/builders/29)           |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_ubuntu-17_default.svg)](http://buildbot:8010/#/builders/29)            |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29) |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29)
|Ubuntu-17 |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_centos-7_default.svg)](http://buildbot:8010/#/builders/29)           |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_ubuntu-17_default.svg)](http://buildbot:8010/#/builders/29)            |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29) |[![Build Status](http://buildbot:8010/badges/ansible_role_elk_debian-9_default.svg)](http://buildbot:8010/#/builders/29)





This role installs the ELK on linux distros. By default its a single stack on
a machine, but can be configured to separate the parts. The aim is to support
the current versions of the main distros. e.g.

 1. CentOS
 2. Ubuntu
 3. Debian

However if possible we will build and test against

 1. Fedora
 2. Oracle
 3. AWS Linux
 4. Raspbian


