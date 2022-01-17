# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# VARIABLES I SET
export EDITOR='nvim'
export VISUAL="$EDITOR"
# Do not have homebrew update on every install.
export HOMEBREW_NO_AUTO_UPDATE=1
# No output from direnv when turned on in a directory.
export DIRENV_LOG_FORMAT=

# VARIABLES I MADE
export DOTFILES="${HOME}/.dotfiles"
export STARTUP_DIR="${HOME}/.startup"

# Load system specific env variables from my custom directory.
. "$STARTUP_DIR"/profile/load.sh

# Launch X automatically from tty1 if on linux.
if command -v startx > /dev/null && [ "$(tty)" = /dev/tty1 ]; then
    exec startx
fi

# TODO: Install nix and remove this.
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

