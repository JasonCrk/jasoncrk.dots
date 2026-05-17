# fnm - Node.js version manager
if [[ -o interactive ]] && (( $+commands[fnm] )); then
  eval "$(fnm env --use-on-cd)"
fi

# zoxide - smarter cd
if [[ -o interactive ]] && (( $+commands[zoxide] )); then
  eval "$(zoxide init zsh)"
fi
