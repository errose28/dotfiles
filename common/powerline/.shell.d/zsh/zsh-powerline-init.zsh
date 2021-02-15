#!/usr/bin/env zsh

# Find the powerline script and source it.
# Script location will depend on the package manager used.
pip_powerline_dir="$(pip show powerline-status | grep 'Location:' | awk '{print $2}')"
powerline_dirs=(~/.nix-profile/share /usr/share/powerline/bindings "$pip_powerline_dir"/powerline/bindings)

for pl_dir in $powerline_dirs; do
    pl_file="$pl_dir"/zsh/powerline.zsh
    if [ -f "$pl_file" ]; then
        source "$pl_file"
        break
    fi
done

