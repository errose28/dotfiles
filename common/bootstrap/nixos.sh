#!/usr/bin/env sh

# Install to user env, no sudo required.
nix-env --install --attr nixos.git

./common.sh
