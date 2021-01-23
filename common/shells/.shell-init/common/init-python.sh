#!/usr/bin/env sh
# Script to set up pyenv virtualenv if installed.

# Default path to virtualenvwrapper init script if not using pyenv.
venv_wrapper_path="$(which virtualenvwrapper.sh)"

# Init pyenv if it is installed.
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    venv_wrapper_path="$(pyenv prefix)"/bin/virtualenvwrapper.sh
fi

# Init virtualenvwrapper if used and use created env 'default' if it exists.
if [ "$venv_wrapper_path" ] && [ -f "$venv_wrapper_path" ]; then
    . "$venv_wrapper_path"

    # Set this variable to use a default virtualenv in every shell.
    if [ "$DEFAULT_VIRTUALENV" ]; then
        if workon | grep -q "$DEFAULT_VIRTUALENV"; then
            workon "$DEFAULT_VIRTUALENV"
        else
            mkvirtualenv "$DEFAULT_VIRTUALENV"
        fi
    fi
fi

