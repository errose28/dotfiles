#!/usr/bin/env bash

# Find the powerline script and source it.
# Script location will depend on the package manager used.

powerline_dirs=(~/.nix-profile/share /usr/share/powerline/bindings) 

for pl_dir in "${powerline_dirs[@]}"; do
    if [ -d "$pl_dir" ]; then
        source "$pl_dir"/bash/powerline.sh
        break
    fi
done

