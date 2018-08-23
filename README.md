# spideroak-systemd

This project provides the systemd unit file for starting and stopping the
SpiderOak service (https://www.spideroak.com) from a systemd environment. This
is based off the work done by funnelfiasco and hv15
(https://github.com/funnelfiasco/spideroak-init)
(https://github.com/hv15/spideroak-systemd).

This repository includes the following files:
* COPYING.md           -- the license (public domain where applicable, 
                          CC0 elsewhere) 
* README.md            -- this file
* `.SpiderOakrc`       -- the configuration file
* `SpiderOak@.service` -- the systemd service file

## Installation
Just copy SpiderOak@.service to /etc/systemd/system/SpiderOak@$USERNAME.service
Optionally, copy or create ~/.SpiderOakrc with ARGS="--something"

## Configuration
Configuration is handled through `~username/.SpiderOakrc`. The systemd
service will use the `ARG` variable to pass options to the SpiderOak
process. '--headless' is automatically included and so does not need to be
specified in `ARG`.

**Note: the scripts and configuration do not perform any sanity-checking
on your behalf. For the security of your system and data, ensure that files
have the proper ownership and permissions.**

## Multi-user support
For systemd, the provided service file is a template. The text between the 
`@` and `.` symbols is for specifying a user name that SpiderOak should be
launched as. Thus to start SpiderOak for both user 'funnel' and user 'fiasco'
you would run

    cp SpiderOak@.service /etc/systemd/system/SpiderOak@funnel.service
    systemctl SpiderOak@funnel.service start
    cp SpiderOak@.service /etc/systemd/system/SpiderOak@fiasco.service
    systemctl SpiderOak@fiasco.service start

TODO - revert my /etc/systemd/system placement back to /usr/lib/systemd/system/
