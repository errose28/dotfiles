#!/usr/bin/env sh

# Shell to have scripts sourced, in addition to common scripts.
# Prints out names of all scripts that should be sourced.
shell="$1"

if [ ! "$shell" ]; then
    echo "shell to source scripts for must be specified" 1>&2
    exit 1
fi

if [ -d  ~/.shell.d/common ]; then
    for file in ~/.shell.d/common/*; do
        echo "$file"
    done
fi

if [ -d ~/.shell.d/"$shell" ]; then
    for file in ~/.shell.d/"$shell"/*; do
        echo "$file"
    done
fi
