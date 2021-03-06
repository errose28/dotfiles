#!/usr/bin/env sh

# Script to init python environment optionally using pyenv and virtualenv.

# pyenv will be enabled if the pyenv command is found in the PATH.
# pyenv version will be autoamtically set to the PYENV_VERSION variable if set.
# This version will be installed if needed (TODO).

# virtualenv will be enabled if virtualenvwrapper.sh is found in the path or
# pyenv prefix directory.
# If DEFAULT_VIRTUALENV environment variable is set, this will be the virtual environment enabled.
# It will be created if it does not exist.

# Init pyenv if it is installed.
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# Currently no need to list possible paths, but this might change.
venv_wrapper_paths=""$(which virtualenvwrapper.sh)""

for venv_wrapper in $venv_wrapper_paths; do
    if [ -f "$venv_wrapper" ]; then
        . "$venv_wrapper"
        break
    fi
done

