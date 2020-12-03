#!/usr/bin/env sh

# This script requires git and pyenv to be installed.

[ "$PYENV_VERSION" ] || PYENV_VERSION='3.9.0'

# Set up pyenv to point to proper python version.
eval "$(pyenv init -)"
pyenv install --skip-existing "$PYENV_VERSION"
pyenv global "$PYENV_VERSION"

# Pyenv may not fetch latest version of pip.
pip install --upgrade pip

# Install the latest version of the robot framework DotfilesLibrary.
# This installs robotframework as a dependency.
repo="/tmp/DotfilesLibrary"
git clone https://github.com/errose28/DotfilesLibrary.git "$repo"
pip install "$repo"

