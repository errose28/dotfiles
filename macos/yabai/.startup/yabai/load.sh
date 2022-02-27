#!/usr/bin/env sh

for file in "$STARTUP_DIR"/yabai/yabai.d/*; do
    # Yabai scripts must be run in the foreground, since yabai is launched from a plist.
    # Each script should not spawn background tasks and finish quickly.
    "$file"
done
