#!/usr/bin/env sh

# This script requires git to be installed.
# It will use pyenv optionally if it is present, and will set up virtualenv.

# If pyenv is installed, use it instead of system python.
if command -v pyenv > /dev/null; then
    [ "$PYENV_VERSION" ] || PYENV_VERSION='3.9.0'

    # Set up pyenv to point to proper python version.
    eval "$(pyenv init -)"
    pyenv install --skip-existing "$PYENV_VERSION"
    pyenv global "$PYENV_VERSION"
    venv_wrapper_path="$(pyenv prefix)"/bin/virtualenvwrapper.sh
fi

# Pyenv may not fetch latest version of pip.
python -m pip install --upgrade pip wheel virtualenv virtualenvwrapper

if command -v pyenv > /dev/null; then
    venv_wrapper_path="$(pyenv prefix)"/bin/virtualenvwrapper.sh
else
    # Default path to virtualenvwrapper init script if not using pyenv.
    venv_wrapper_path="$(which virtualenvwrapper.sh)"
fi

# Init virtualenvwrapper.
. "$venv_wrapper_path"

# Default virtualenv that all pip installation will go towards.
mkvirtualenv default

# Install the latest version of the robot framework DotfilesLibrary.
# This installs robotframework as a dependency.
repo="/tmp/DotfilesLibrary"
git clone https://github.com/errose28/DotfilesLibrary.git "$repo"
pip install "$repo"
rm -rf "$repo"

