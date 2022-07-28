#!/usr/bin/env sh

# Macos by default will only have a python3 executable for system python.
# m cli requires the executable to be naemd python, so add homebrew's symlink to the path.
brew_python_dir="$(brew --prefix)/opt/python/libexec/bin/"
if [ -d "$brew_python_dir" ]; then
    PATH="$brew_python_dir:$PATH"
fi

