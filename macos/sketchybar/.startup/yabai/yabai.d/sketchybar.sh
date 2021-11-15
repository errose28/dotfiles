#!/usr/bin/env sh

# Refresh bar when yabai is restarted.
sketchybar-yabai-reload
# Make space for the bar.
yabai -m config external_bar all:0:30
# Refresh bar when mission control is entered/exited.
yabai -m signal --add event=mission_control_exit action=sketchybar-yabai-reload label=sketchybar-mc-exit
yabai -m signal --add event=mission_control_check_for_exit action=sketchybar-yabai-reload label=sketchybar-mc-check
# Refresh bar when window counts per space could have changed.
yabai -m signal --add event=window_created action=sketchybar-yabai-reload label=sketchybar-windw-created
yabai -m signal --add event=window_destroyed action=sketchybar-yabai-reload label=sketchybar-windw-destroyed
# Handles case when window is moved using `yabai -m window --space <space>`
# which does not trigger window_moved event.
# Also handles space label change events.
yabai -m signal --add event=daemon_message action=sketchybar-yabai-reload label=sketchybar-yabai-messaged

