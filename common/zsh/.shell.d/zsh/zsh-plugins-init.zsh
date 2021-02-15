#!/usr/bin/env zsh

### LOAD PLUGINS ###

# Locates zsh plugins and sources them.
# Add locations to look and plugin names to this file.

zsh_plugin_dirs=(~/.nix-profile/share /usr/share/zsh/plugins) 
zsh_plugins=(zsh-autosuggestions zsh-syntax-highlighting)

for plugin_dir in $zsh_plugin_dirs; do
    if [ -d "$plugin_dir" ]; then
        for plugin in $zsh_plugins; do
            source "$plugin_dir/$plugin/$plugin".zsh
        done
    fi
done

### PLUGINS SETTINGS ###

# First check history for command completion, then check tab complete.
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# Makes tab completion history search not lag typing.
ZSH_AUTOSUGGEST_USE_ASYNC=1
# Accept suggestion (don't run command) with ctrl+space.
bindkey '^ ' autosuggest-accept

