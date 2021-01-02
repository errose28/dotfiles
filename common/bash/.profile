# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Init pyenv if it is installed.
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# Init virtualenvwrapper. Its location should be added to the path if it is not
# already.
if pip list | grep -q virtualenvwrapper; then
    . "$(which virtualenvwrapper.sh)"
    if workon | grep -q default; then
        workon default
    fi
fi

# VARIABLES I SET
export EDITOR='vim'
export VISUAL="$EDITOR"

# Disable opengl hardware acceleration.
# If this is not set and the laptop screen is turned off, opengl applications
# slow to 1fps refresh rate.
# export LIBGL_ALWAYS_SOFTWARE=1

# VARIABLES I MADE
export DOTFILES="${HOME}/.dotfiles"
export PREF_TERM='alacritty'
export WALLPAPER="${HOME}/.wallpapers/grey_mountain.jpg"

# Load system specific env variables from my custom directory.
if [ -d ~/.variables ]; then
    for file in ~/.variables/*; do
        . "$file"
    done
fi
