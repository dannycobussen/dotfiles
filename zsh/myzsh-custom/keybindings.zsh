# bindkey -s ^f "^Qtmux-sessionizer\n"
# bindkey -s ^f "tmux-sessionizer\n"
#

tmux-sessionizer-cool() {
  if [[ -n $TMUX ]]; then
    tmux display-popup -E -w 80% -h 60% "tmux-sessionizer"
  else
    BUFFER="tmux-sessionizer"
    zle accept-line
  fi
}

zle -N tmux-sessionizer-cool
bindkey '^f' tmux-sessionizer-cool
