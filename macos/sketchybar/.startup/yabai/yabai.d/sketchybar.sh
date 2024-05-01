#!/usr/bin/env sh

yabai -m config external_bar all:0:24

# Refresh bar when mission control is exited since spaces may have changed.
yabai -m signal --add event=mission_control_exit action='sketchybar-yabai-spaces refresh'  label=sketchybar-mc-exit
# For some reason the bar disappears when entering mission control if this is not here.
yabai -m signal --add event=mission_control_enter action='sketchybar-yabai-spaces refresh'  label=sketchybar-mc-enter

# Lighter weight space updates for when number and order of spaces does not change.
yabai -m signal --add event=space_changed action='sketchybar-yabai-spaces update' label=sketchybar-space-changed
yabai -m signal --add event=display_changed action='sketchybar-yabai-spaces update' label=sketchybar-display-changed

yabai -m signal --add event=window_created action='sketchybar-yabai-spaces update' label=sketchybar-window-created
yabai -m signal --add event=window_destroyed action='sketchybar-yabai-spaces update' label=sketchybar-window-destroyed

yabai -m signal --add event=window_minimized action='sketchybar-yabai-spaces update' label=sketchybar-windw-minimized
yabai -m signal --add event=window_deminimized action='sketchybar-yabai-spaces update' label=sketchybar-windw-deminimized

