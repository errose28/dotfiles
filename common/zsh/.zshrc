# Source startup scripts.
for file in $(~/.shell.d/init-scripts.sh zsh); do
    source "$file"
done

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

bindkey -s '^h' 'r^M'

# Fix compinit failure on macos.
if [ "$(uname -s)" = Darwin ]; then
    compaudit | xargs chmod g-w
fi

# Enable zsh in direnv if available.
if command -v direnv > /dev/null; then
    eval "$(direnv hook zsh)"
fi

# zsh variable to disable right side prompt.
RPROMPT=''

# TODO: Start shell in last tmux dir if a variable is set.
# cd "$(tmux display -p "#{pane_current_path}")"
# TODO: Start tmux with a new session attached to the last one if a variable is set.
# tmux new-session -t "$(tmux display -p "#P")"
if command -v tmux &> /dev/null && [ -z "$TMUX" ] && [[ ! -o login ]] && [[ -o interactive ]]; then
  tmux
fi

