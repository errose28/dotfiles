#!/usr/bin/env zsh

### LOAD PLUGINS ###

zsh_plugins=(zsh-autosuggestions zsh-syntax-highlighting)
for plugin in $zsh_plugins; do
    source "$ZSH_PLUGIN_DIR/$plugin/$plugin".zsh
done

### PLUGINS SETTINGS ###

# First check history for command completion, then check tab complete.
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# Makes tab completion history search not lag typing.
ZSH_AUTOSUGGEST_USE_ASYNC=1
# Accept suggestion (don't run command) with ctrl+space.
bindkey '^ ' autosuggest-accept

