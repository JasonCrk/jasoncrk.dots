zmodload zsh/complist 2>/dev/null

[ -s "/home/jasoncrk/.bun/_bun" ] && source "/home/jasoncrk/.bun/_bun"

zstyle ':completion:*' list-colors \
  'no=97' \
  'fi=97' \
  'di=1;38;5;196' \
  'ln=1;38;5;196' \
  'ex=1;38;5;196' \
  'pi=97' \
  'so=97' \
  'bd=97' \
  'cd=97' \
  'or=1;38;5;196' \
  'mi=1;38;5;196'
