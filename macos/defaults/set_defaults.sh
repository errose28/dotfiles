#!/usr/bin/env sh

# Make long press repeating instead of showing alt char.
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# Speed up window animations.
defaults write -g NSWindowResizeTime -float 0.0001
