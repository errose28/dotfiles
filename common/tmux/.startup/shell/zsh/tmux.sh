#!/usr/bin/env zsh

# Set variables so common script knows whether to start tmux or not.
if [[ -o login ]]; then
    IS_LOGIN=1
fi

if [[ -o interactive ]]; then
    IS_INTERACTIVE=1
fi

THIS_SHELL=zsh
