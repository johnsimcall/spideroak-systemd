#!/bin/bash
# Start/Stop script for SpiderOak to work `nicer` with per-user options
#
# params:
# -> $1 = user home directoy, where the `.spideroak.rc` file is

echo "Checking if $1/.spideroak.rc exists"
if [ -f "$1/.spideroak.rc" ]; then
    echo "Sourcing..."
    source "$1/.spideroak.rc"
fi

echo "Starting SpiderOak with ARGs = ${ARG:-'nothing set :('}"
exec /usr/bin/SpiderOakONE --headless ${ARG:-}
