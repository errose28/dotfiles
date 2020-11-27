#!/bin/sh

# From /etc/x11/xinit/xinitrc:
xrdb -merge $HOME/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Start my desktop programs:

# Use picom to round window corners.
picom &

# Load the monitor configuration and set the background.
# Force the change if the config was already loaded so the background image is set via the postswitch.
autorandr --change --force &

# Start the keybinding daemon for non i3 key bindings.
sxhkd &

# Start gesture detection.
libinput-gestures-setup start &

# If unclutter is still running from the trackpad disabling script, kill it.
pkill unclutter &
# Enable natural (reversed) scrolling.
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1 &
# Enable double tap to click.
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
# Speed up key repeat.
xset r rate 280 40

# disable screen blanking (screen will not automatically turn off)
xset s off -dpms &

# light-locker uses lightDM and xscreenlock to lock the screen.
light-locker --lock-on-suspend --no-lock-on-lid &

# Start i3
exec i3

