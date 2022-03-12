#!/usr/bin/env sh

# Make space for the bar.
sketchybar-yabai-set-position top

# Refresh bar when mission control is entered/exited.
yabai -m signal --add event=mission_control_enter action='sketchybar-item-yabai-spaces --bar position=bottom'  label=sketchybar-mc-enter
yabai -m signal --add event=mission_control_exit action='sketchybar-item-yabai-spaces --bar position="$(yabai-get-bar-position)"'  label=sketchybar-mc-exit
# Refresh bar when window counts per space could have changed.
yabai -m signal --add event=window_created action='sketchybar-item-yabai-spaces' label=sketchybar-windw-created
yabai -m signal --add event=window_destroyed action='sketchybar-item-yabai-spaces' label=sketchybar-windw-destroyed
# Refresh spaces when minimized windows change.
yabai -m signal --add event=window_minimized action='sketchybar-item-yabai-spaces' label=sketchybar-windw-minimized
yabai -m signal --add event=window_deminimized action='sketchybar-item-yabai-spaces' label=sketchybar-windw-deminimized
# Full bar reload when displays are changed in case a notched display was added/removed.
yabai -m signal --add event=display_added action='sketchybar-yabai-set-height' label=sketchybar-display-added
yabai -m signal --add event=display_removed action='sketchybar-yabai-set-height' label=sketchybar-display-removed

