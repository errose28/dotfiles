#!/usr/bin/env bash
set -e

# Nix install script should be run as the user, and will prompt for sudo as
# necessary.
# Perform a multi user install, so multiple users can use the store.
# It requires rsync to be installed as well.
# TODO: Create the nix store as a volume mount.
#   Can add the darwin install flag if we do not do it manually.
sh <(curl -L https://nixos.org/nix/install) --daemon

