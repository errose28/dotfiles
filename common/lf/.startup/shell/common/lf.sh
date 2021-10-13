#!/usr/bin/env sh

# Make lf cd to its last directory on exit.
# Copied from https://github.com/gokcehan/lf/blob/master/etc/lfcd.sh
lf() {
    tmp="$(mktemp)"
    # Prevent recursive call.
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}
