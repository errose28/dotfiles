#!/usr/bin/env sh

# Even though this is only used by zsh, it may be run under a different login
# shell as part of .profile, so use sh.

zsh_plugin_dirs="$HOME/.nix-profile/share":'/opt/homebrew/share':'/usr/share/zsh/plugins':'/usr/share'

old_ifs="$IFS"
IFS=':'

for plugin_dir in $zsh_plugin_dirs; do
    if [ -d "$plugin_dir" ]; then
        export ZSH_PLUGIN_DIR="$plugin_dir"
        break
    fi
done

IFS="$old_ifs"

