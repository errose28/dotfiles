#!/usr/bin/env sh

for file in "$STARTUP_DIR"/bspwm/bspwm.d/*; do
    "$file" &
done
