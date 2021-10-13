# Do not start tmux in linux login shells. 
# MacOS (Darwin) starts every shell as login shell.
if command -v tmux &> /dev/null && [[ -z "$TMUX" ]] && [[ ( ! -o login || $(uname -s) == 'Darwin' ) ]] && [[ -o interactive ]]; then
    if [ -n "$USE_TMUX_DIR" ]; then
        # Use working dir of last tmux pane.
        cd "$(tmux display -p "#{pane_current_path}")"
   fi

    if [ -n "$USE_TMUX_SESSION" ]; then
        # Start new session connected to last tmux session.
        tmux new-session -t "$(tmux display -p "#S")"
    elif [ -n "$USE_TMUX" ]; then
        tmux
    fi
fi

# Instant prompt before entering tmux seems to cause issues, so enter tmux session first.
# Instant prompt will be activated within the tmux session.

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source startup scripts.
source "$STARTUP_DIR"/shell/load.sh zsh

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

# Enable zsh in direnv if available.
if command -v direnv > /dev/null; then
    eval "$(direnv hook zsh)"
fi

# zsh variable to disable right side prompt.
RPROMPT=''

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

