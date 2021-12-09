#!/usr/bin/env sh

# From /etc/x11/xinit/xinitrc:
xrdb -merge $HOME/.Xresources
if [ -d /etc/X11/xinit/xinitrc.d ]; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Enable natural (reversed) scrolling.
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1 &
# Enable double tap to click.
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
# Speed up key repeat.
xset r rate 280 40
# disable screen blanking (screen will not automatically turn off)
xset s off -dpms &
# Do not use x shaped cursor by default.
xsetroot -cursor_name left_ptr &

# Custom directory with scripts to start in the background.
"$STARTUP_DIR"/xinit/load.sh &

# session should be a custom script in the path specified by the current window manager.
command -v session > /dev/null && exec session
