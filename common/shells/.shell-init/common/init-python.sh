#!/usr/bin/env sh

# Script to init python environment optionally using pyenv and virtualenv.

# pyenv will be enabled if the pyenv command is found in the PATH.
# pyenv version will be autoamtically set to the PYENV_VERSION variable if set.
# This version will be installed if needed (TODO).

# virtualenv will be enabled if virtualenvwrapper.sh is found in the path or
# pyenv prefix directory.
# If DEFAULT_VIRTUALENV environment variable is set, this will be the virtual environment enabled.
# It will be created if it does not exist.

# Default path to virtualenvwrapper init script if not using pyenv.
venv_wrapper_path="$(which virtualenvwrapper.sh)"

# Init pyenv if it is installed.
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    venv_wrapper_path="$(pyenv prefix)"/bin/virtualenvwrapper.sh
fi

# Init virtualenvwrapper if used.
if [ "$venv_wrapper_path" ] && [ -f "$venv_wrapper_path" ]; then
    . "$venv_wrapper_path"

    # Create/set default virtualenv if specified.
    if [ "$DEFAULT_VIRTUALENV" ]; then
        if workon | grep -q "$DEFAULT_VIRTUALENV"; then
            workon "$DEFAULT_VIRTUALENV"
        else
            mkvirtualenv "$DEFAULT_VIRTUALENV"
        fi
    fi
fi

