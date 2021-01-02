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

# Fix compinit failure on macos.
if [ "$(uname -s)" = Darwin ]; then
    compaudit | xargs chmod g-w
fi

# Init pyenv if it is installed.
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# Init virtualenvwrapper installed with pyenv python.
source ~/.pyenv/versions/3.9.0/bin/virtualenvwrapper.sh

# Load powerline prompt.
if [ "$(uname -s)" = Darwin ]; then
    POWERLINE_DIR="$(python -m site --user-site)"
else
    POWERLINE_DIR='/usr/share'
fi
powerline-daemon -q
. "$POWERLINE_DIR"/powerline/bindings/zsh/powerline.zsh
# zsh variable to disable right side prompt.
RPROMPT=''


# Load my custom functions across shells.
if [ -d ~/.functions ]; then
    for file in ~/.functions/*; do
        . "$file"
    done
fi

### LOAD ZSH PLUGINS ###

#if you receive "highlighters directory not found" error message,
#you may need to add the following to your .zshenv:
#  export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighter
if [ "$(uname -s)" = Darwin ]; then
    ZSH_PLUGIN_DIR='/usr/local/share'
else
    ZSH_PLUGIN_DIR='/usr/share/zsh/plugins'
fi

# Syntax highlighting.
source "$ZSH_PLUGIN_DIR"/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Auto suggestions.
source "$ZSH_PLUGIN_DIR"/zsh-autosuggestions/zsh-autosuggestions.zsh
# First check history for command completion, then check tab complete.
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# Makes tab completion history search not lag typing.
ZSH_AUTOSUGGEST_USE_ASYNC=1
# Accept suggestion (don't run command) with ctrl+space.
bindkey '^ ' autosuggest-accept

