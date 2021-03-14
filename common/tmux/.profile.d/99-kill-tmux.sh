#!/usr/bin/env sh

# Start with a fresh set of tmux sessions on each login for Linux.
# Won't work on MacOS since every shell is login, also not needed since
# sessions are killed on logout on MacOS.
if command -v tmux > /dev/null && [ "$(uname -s)" != 'Darwin' ]; then
    tmux kill-server
fi
