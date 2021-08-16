#!/usr/bin/env sh

# Displays the first argument if in a git repo.
# Otherwise, displays the second argument if it is given.

git_on="$1"
git_off="$2"

if git rev-parse --git-dir 2>/dev/null 1>/dev/null; then
    echo "$git_on"
elif [ -n "$git_off" ]; then
    echo "$git_off"
fi
