#!/usr/bin/env sh

# TODO: Figure out why no other scripts in this folder can be execed after this one.
# Must invoke setxkbmap before sxhkd for it to work.
setxkbmap -option 'caps:escape' &

sxhkd ~/.config/sxhkd/* &
  
