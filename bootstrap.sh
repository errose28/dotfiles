#!/usr/bin/env sh

# Installs libraries for dotfiles deployment.
python -m pip install \
    setuptools \
    wheel \
    robotframework \
    git+https://github.com/errose28/DotfilesLibrary.git \
    git+https://github.com/errose28/DotfilesLibraryListeners.git
