#!/usr/bin/env bash

# Set variables so common script knows whether to start tmux or not.
if shopt -q login_shell; then
    IS_LOGIN=1
fi

case $- in
    *i*) IS_INTERACTIVE=1;;
esac

