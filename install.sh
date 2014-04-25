#!/bin/bash
# This is a little install script to copy all of the files in the correct places

# Files
SRV=spideroak@.service
SRP=spideroak
SRC=.spideroak.rc

# Directories
SERV=/usr/lib/systemd/system
SCRI=/usr/lib/systemd/script

echo "Copying Service file and Script"
cp $SRV $SERV
cp $SRP $SCRI

echo "Copying RC file to user dir"
cp $SRC $HOME
