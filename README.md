# spideroak-systemd

Verified with SpiderOakGroups v7.1.0.10202

TODO - Merge SpiderOakGroups@.service and SpiderOak@.service into a single file that can call the correct binary

This project provides a systemd unit file for the [SpiderOak / SpiderOakGroups](https://www.spideroak.com) backup agent.  This is based off the work done by [funnelfiasco](https://github.com/funnelfiasco/spideroak-init) and [hv15](https://github.com/hv15/spideroak-systemd).

This repository includes the following files:
* COPYING.md         -- the license (public domain where applicable, CC0 elsewhere) 
* README.md          -- this file
* .SpiderOakrc      -- the configuration file
* SpiderOak@.service -- the systemd service file

## Installation

1. `cp SpiderOak@.service /usr/lib/systemd/system/`
2. `systemctl enable SpiderOak@USERNAME --now`

Optionally, copy or create ~/.SpiderOakrc with ARGS="--something"

## Configuration
Configuration is handled through `~USERNAME/.SpiderOakrc`. The systemd service will use the `ARG` variable to pass options to the SpiderOak process. '--headless' is automatically included and so does not need to be specified in `ARG`.

**Note: the scripts and configuration do not perform any sanity-checking on your behalf. For the security of your system and data, ensure that files have the proper ownership and permissions.**

## Multi-user support
The provided `.service` file is a template. The text between the `@` and `.` symbols is for specifying a user name that SpiderOak should be launched as. Thus to start SpiderOak for both user 'funnel' and user 'fiasco' you would run:

    # cp SpiderOak@.service /usr/lib/systemd/system/
    
    # systemctl enable SpiderOak@funnel --now
      Created symlink from /etc/systemd/system/multi-user.target.wants/SpiderOak@funnel.service to /usr/lib/systemd/system/SpiderOak@.service.
    
    # systemctl enable SpiderOak@fiasco --now
      Created symlink from /etc/systemd/system/multi-user.target.wants/SpiderOak@fiasco.service to /usr/lib/systemd/system/SpiderOak@.service.
