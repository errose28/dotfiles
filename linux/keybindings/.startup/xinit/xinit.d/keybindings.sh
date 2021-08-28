#!/usr/bin/env sh

# Must invoke setxkbmap before sxhkd for it to work.
setxkbmap -option 'caps:escape'
sxhkd ~/.config/sxhkd/*
  
