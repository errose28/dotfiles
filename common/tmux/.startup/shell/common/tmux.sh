#!/usr/bin/env sh

# Do not start tmux in linux login shells. 
# MacOS (Darwin) starts every shell as login shell.
if command -v tmux &> /dev/null && \
    [ -z "$TMUX" ] && \
    [ "$(uname -s)" = Darwin -o -z "$IS_LOGIN" ] && \
    [ -n "$IS_INTERACTIVE" ]; then

    if [ -n "$USE_TMUX_DIR" ]; then
        # Use working dir of last tmux pane.
        cd "$(tmux display -p "#{pane_current_path}")"
   fi

    if [ -n "$USE_TMUX_SESSION" ]; then
        # Start new session connected to last tmux session.
        tmux new-session -t "$(tmux display -p "#S")"
    elif [ -n "$USE_TMUX" ]; then
        tmux
    fi
fi

