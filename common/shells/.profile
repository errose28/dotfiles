# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# VARIABLES I SET
export EDITOR='vim'
export VISUAL="$EDITOR"
# Do not have homebrew update on every install.
export HOMEBREW_NO_AUTO_UPDATE=1
# No output from direnv when turned on in a directory.
export DIRENV_LOG_FORMAT=

# Disable opengl hardware acceleration.
# If this is not set and the laptop screen is turned off, opengl applications
# slow to 1fps refresh rate.
# export LIBGL_ALWAYS_SOFTWARE=1

# VARIABLES I MADE
export DOTFILES="${HOME}/.dotfiles"
export WALLPAPER="${HOME}/.wallpapers/grey_mountain.jpg"

# Load system specific env variables from my custom directory.
if [ -d ~/.profile.d ]; then
    for file in ~/.profile.d/*; do
        . "$file"
    done
fi

