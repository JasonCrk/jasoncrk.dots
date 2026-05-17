if [[ -o interactive ]] && [[ -z "$TMUX" ]] && (( $+commands[tmux] )); then
  tmux new-session -A -s jasoncrk
fi
