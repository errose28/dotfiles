#!/usr/bin/env sh

# Make space for the bar.
position='top'
sketchybar-yabai-set-position "$position"

# Refresh bar when mission control is entered/exited.
yabai -m signal --add event=mission_control_enter action='sketchybar-spaces refresh --bar position=bottom'  label=sketchybar-mc-enter
yabai -m signal --add event=mission_control_exit action='sketchybar-spaces refresh --bar position="$(yabai-get-bar-position)"'  label=sketchybar-mc-exit

# Lighter weight space updates for when number and order of spaces does not change.
yabai -m signal --add event=space_changed action='sketchybar-spaces update' label=sketchybar-space-changed
yabai -m signal --add event=display_changed action='sketchybar-spaces update' label=sketchybar-display-changed

yabai -m signal --add event=window_created action='sketchybar-spaces update' label=sketchybar-window-created
yabai -m signal --add event=window_destroyed action='sketchybar-spaces update' label=sketchybar-window-destroyed

yabai -m signal --add event=window_minimized action='sketchybar-spaces update' label=sketchybar-windw-minimized
yabai -m signal --add event=window_deminimized action='sketchybar-spaces update' label=sketchybar-windw-deminimized

# Move bar position when displays are added or removed in case a notched display was added.
yabai -m signal --add event=display_added action="sketchybar-yabai-set-position $(yabai-get-bar-position)" label=sketchybar-display-added
yabai -m signal --add event=display_removed action="sketchybar-yabai-set-position $(yabai-get-bar-position)" label=sketchybar-display-removed

