if [[ -o interactive ]] && [[ -z "$TMUX" ]] && (( $+commands[tmux] )); then
  exec tmux new-session -A -s jasoncrk
fi
