#!/usr/bin/env sh

# Install homebrew without git.
if ! command -v brew > /dev/null; then
    echo 'Installing homebrew...'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# xcode cli tools needed for some homebrew installs.
xcode-select --install

brew install \
    git \
    pyenv

./common.sh
