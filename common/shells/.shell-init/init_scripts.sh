#!/usr/bin/env sh

# Shell to have scripts sourced, in addition to common scripts.
# Prints out names of all scripts that should be sourced.
shell="$1"

if [ ! "$shell" ]; then
    echo "shell to source scripts for must be specified" 1>&2
    exit 1
fi

for file in "$SHELL_INIT_DIR"/common/*; do
    echo "$file"
done

for file in "$SHELL_INIT_DIR"/"$shell"/*; do
    echo "$file"
done
