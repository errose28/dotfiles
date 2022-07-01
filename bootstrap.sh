#!/usr/bin/env bash

# Source this script to bootstrap dotfiles installation requirements.

if [ -z "$DOTFILES" ]; then
    echo '$DOTFILES must be set to the root directory of the dotfiles to bootstrap.'
    exit 1
fi

# Install asdf if needed and use it to set up python.
if [ ! -f ~/.asdf/asdf.sh ]; then
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
fi

source ~/.asdf/asdf.sh

# asdf saves the current python version in the .tool-versions file and picks it
# up when sourced. Create that file if it is not there already.
if [ ! -f "$DOTFILES/.tool-versions" ]; then
    if ! asdf plugin list | grep -q python; then
        asdf plugin add python
    fi
    asdf install python latest > /dev/null
    cd "$DOTFILES"
    asdf local python latest
    cd -
fi

# Create venv if necessary and load it.
if [ ! -d "$DOTFILES/.venv" ] ; then
    python -m venv "$DOTFILES"/.venv
    source "$DOTFILES"/.venv/bin/activate
    python -m pip install -r "$DOTFILES"/requirements.txt
else
    source "$DOTFILES"/.venv/bin/activate
fi

# Set default options for robot.
ROBOT_OPTIONS="
  --outputdir="$DOTFILES/.logs"
  --variable=INSTALLER:"$DOTFILES/installer.sh"
  --variable=MODE:skip
"

# Use short options for uname, since gnu coreutils may not be installed on a fresh mac setup.
kernel="$(uname -s)"
if [ "$kernel" = 'Linux' ]; then
    ROBOT_OPTIONS="$ROBOT_OPTIONS --include=linux"
elif [ "$kernel" = 'Darwin' ]; then
    ROBOT_OPTIONS="$ROBOT_OPTIONS --include=macos"
fi

# Only run setup.robot files, not robot files with any other name.
ROBOT_OPTIONS="$ROBOT_OPTIONS --suite=setup"

export ROBOT_OPTIONS
