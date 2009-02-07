#!/bin/bash

################################################################################
# Run 'gem server', if it's not already running.
#
# ('gem server' serves up all your Rubygems' rdocs at http://localhost:8808/ .)
if [[ ! $(ps aux | grep 'gem server' | grep -v grep) ]]; then
    gem server >/dev/null 2>&1 &
fi
