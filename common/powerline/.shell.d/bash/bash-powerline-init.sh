#!/usr/bin/env bash

pl_file="$POWERLINE_DIR"/bash/powerline.sh
if [ -f "$pl_file" ]; then
    source "$pl_file"
fi

export POWERLINE_BASH_CONTINUATION=1
export POWERLINE_BASH_SELECT=1

