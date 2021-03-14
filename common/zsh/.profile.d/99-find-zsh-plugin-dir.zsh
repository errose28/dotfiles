#!/usr/bin/env zsh

zsh_plugin_dirs="$HOME/.nix-profile/share /usr/share/zsh/plugins"

for plugin_dir in $zsh_plugin_dirs; do
    if [ -d "$plugin_dir" ]; then
        export ZSH_PLUGIN_DIR="$plugin_dir"
        break
    fi
done

