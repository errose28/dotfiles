#!/usr/bin/env sh

for file in "$STARTUP_DIR"/xinit/xinit.d/*; do
    "$file" &
done
