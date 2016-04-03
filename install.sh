#!/bin/bash
# This is a little install script to copy all of the files in the correct places

# Files
SRV=spideroak@.service
SRP=spideroak.sh
SRC=.spideroak.rc

# Directories
SERV=/usr/lib/systemd/system
SCRI=/usr/lib/systemd/scripts

echo "Copying Service file and Script"
cp $SRV $SERV
cp $SRP $SCRI/${SRP%.sh}

echo "Copying RC file to user dir"
cp $SRC $HOME
