#!/usr/bin/env sh

# This script requires git and pyenv to be installed.

[ "$PYENV_VERSION" ] || PYENV_VERSION='3.9.0'

# Set up pyenv to point to proper python version.
eval "$(pyenv init -)"
pyenv install --skip-existing "$PYENV_VERSION"
pyenv global "$PYENV_VERSION"

# Pyenv may not fetch latest version of pip.
pip install --upgrade pip

pip install robotframework

# Install the latest version of the robot framework DotfilesLibrary.
repo="/tmp/DotfilesLibrary"
python_dir="$(python -m site --user-site)"

git clone https://github.com/errose28/DotfilesLibrary.git "$repo"
mkdir -p "$python_dir"
cp -r "$repo"/source/DotfilesLibrary "$python_dir"
rm -rf "$repo"

# Deploy the rodot wrapper script.
ln -svf "$(realpath bin/*)" ~/bin

