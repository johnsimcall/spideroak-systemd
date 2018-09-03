#!/bin/bash
# This is a little install script to copy all of the files in the correct places

# Files
SRV=SpiderOak@.service
SRC=.SpiderOakrc

# Directories
SERV=/usr/lib/systemd/system

echo "Copying RC file to user dir"
cp -iv $SRC $HOME

echo "Copying unit file"
sudo cp -iv $SRV $SERV/
sudo systemctl enable $(expr match "$SRV" '\(.*@\)')$USER.service --now
sudo systemctl status $(expr match "$SRV" '\(.*@\)')$USER.service