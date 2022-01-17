#!/usr/bin/env sh

# Start with a fresh set of tmux sessions on each login for Linux.
# Won't work on MacOS since every shell is login.
if command -v tmux > /dev/null; then
    tmux kill-server
fi
