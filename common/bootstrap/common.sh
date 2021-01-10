#!/usr/bin/env sh

# This script requires git to be installed.
# If pyenv is present, it will use it to install virtualenv and virtualenvwrapper.
# Else, it will assume virtualenv and virtualenvwrapper have already been installed.

# If pyenv is installed, use it instead of system python.
if command -v pyenv > /dev/null; then
    [ "$PYENV_VERSION" ] || PYENV_VERSION='3.9.0'

    # Set up pyenv to point to proper python version.
    eval "$(pyenv init -)"
    pyenv install --skip-existing "$PYENV_VERSION"
    pyenv global "$PYENV_VERSION"
    # Pyenv may not fetch latest version of pip.
    python -m pip install --upgrade pip setuptools wheel virtualenv virtualenvwrapper
else
    pip install --upgrade setuptools wheel
fi


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
git clone https://github.com/errose28/DotfilesLibrary.git "$repo" --branch='nix-support'
pip install "$repo"
rm -rf "$repo"

