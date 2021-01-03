#!/usr/bin/env sh

# Install to user env, no sudo required.
# Install pip since we are not using pyenv with NixOS.
nix-env --install --attr nixos.git nixos.python39Packages.pip

./common.sh
