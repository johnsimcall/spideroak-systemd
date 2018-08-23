#!/bin/bash
# This is a little install script to copy all of the files in the correct places

# Files
SRV=SpiderOak@.service
SRC=.SpiderOakrc

# Directories
SERV=/etc/systemd/system

echo "Copying unit file"
# This fails because $USER is not allowed to copy files into $SERV
cp -iv $SRV $SERV/`expr match "$SRV" '\(.*@\)'`$USER.service

echo "Copying RC file to user dir"
cp -iv $SRC $HOME
