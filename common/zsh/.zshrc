# Source startup scripts.
source "$STARTUP_DIR"/shell/load.sh zsh

### LOAD PLUGINS ###

# Instant prompt before entering tmux seems to cause issues, so load startup scripts (including tmux) first.
# Instant prompt will be activated within the tmux session.

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

load_plugin() {
    plugin="$1"
    if [ -f "$plugin" ]; then
        source "$plugin"
    else
        echo "failed to find plugin $plugin"
    fi
}

load_plugin "$ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
load_plugin "$ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# Homebrew installs p10k at a different location than other zsh plugins.
brew_p10k_file='/opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme'
if [ -f "$brew_p10k_file" ]; then
    source "$brew_p10k_file"
else
    load_plugin "$ZSH_PLUGIN_DIR/zsh-powerlevel10k/powerlevel10k.zsh-theme"
fi

### PLUGINS SETTINGS ###

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
load_plugin ~/.p10k.zsh

# First check history for command completion, then check tab complete.
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# Makes tab completion history search not lag typing.
ZSH_AUTOSUGGEST_USE_ASYNC=1
# Accept suggestion (don't run command) with ctrl+space.
bindkey '^ ' autosuggest-accept

### END PLUGINS ###

# Enable colors.
autoload -U colors && colors

# History in cache directory.
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
mkdir -p "$(dirname "$HISTFILE")" && touch "$HISTFILE"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vi keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# zsh variable to disable right side prompt.
RPROMPT=''

