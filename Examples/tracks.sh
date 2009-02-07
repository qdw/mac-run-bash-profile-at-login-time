#!/bin/sh

 Run Tracks (an open-source GTD web app) locally, if it's not already running.
if [[ ! $(p ~/tracks/script/server) ]]; then
    ~/tracks/script/server -e production & >/dev/null 2>&1
fi
