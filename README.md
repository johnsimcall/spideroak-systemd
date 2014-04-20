# spideroak-systemd

** Work in Progress **

This project provides tools for starting and stopping the SpiderOak service
(https://www.spideroak.com) from a systemd environment. This is based off
the work done by funnelfiasco
(https://github.com/funnelfiasco/spideroak-init).

* This repository includes the following files:
    * COPYING.md         -- the license (public domain where applicable,
                            CC0 elsewhere) 
    * README.md          -- this file
    * SpiderOak          -- the configuration file
    * spideroak@.service -- a systemd service file

## Installation
To install on a system using systemd, copy the file 'spideroak@.service' to
/usr/lib/systemd/system/spideroak@.service and the file 'SpiderOak' to
/etc/sysconfig/SpiderOak . 

## Configuration
Configuration is handled through /etc/sysconfig/SpiderOak. The systemd
service will use the SPIDEROAKOPTS setting to pass options to the SpiderOak
process. '--headless' is automatically included and so does not need to be
specified in SPIDEROAKOPTS.

**Note: the scripts and configuration do not perform any sanity-checking
on your behalf. For the security of your system and data, ensure that files
have the proper ownership and permissions.**

## Multi-user support
For systemd, the provided service file is a template. The text between the 
@ and . Indicate the user name that SpiderOak should be launched as. Thus
to start SpiderOak for both user 'funnel' and user 'fiasco' you would run

    systemctl spideroak@funnel.service start
    systemctl spideroak@fiasco.service start

Setting per-user SPIDEROAKOPTS is not currently supported.
