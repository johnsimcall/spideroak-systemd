#!/bin/bash
# Start/Stop script for SpiderOak to work `nicer` with per-user options

echo "Checking if $HOME/.spideroak.rc exists"
if [ -f "$HOME/.spideroak.rc" ]; then
    echo "Sourcing..."
    source "$HOME/.spideroak.rc"
fi

echo "Starting SpiderOak with ARGs = ${ARG:-'nothing set :('}"
exec /usr/bin/SpiderOakONE --headless ${ARG:-}
