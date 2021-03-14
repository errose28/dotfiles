#!/usr/bin/env sh

config="$1"
if git rev-parse --git-dir 2>/dev/null 1>/dev/null; then
    #tmux display "Called with $config from $(pwd)"
    echo "$config"
fi
