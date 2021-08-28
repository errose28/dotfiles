#!/usr/bin/env sh

for file in "$STARTUP_DIR"/profile/profile.d/*; do
    . "$file"
done
