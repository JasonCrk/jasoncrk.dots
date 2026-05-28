#!/usr/bin/env bash

CLIENT_TTY="$1"
CLIENT_PID="$2"

clear

printf "\n\n"
printf "  Do you want to go out? Y/n "

IFS= read -rsn1 answer || answer=""

case "$answer" in
  ""|y|Y)
    ;;
  *)
    exit 0
    ;;
esac

tmux list-panes -a -F '#{pane_id}|#{pane_current_path}' | while IFS='|' read -r pane_id pane_path; do
  if [ -n "$pane_path" ] && [ -d "$pane_path" ]; then
    tmux respawn-pane -k -t "$pane_id" -c "$pane_path" 2>/dev/null
  else
    tmux respawn-pane -k -t "$pane_id" 2>/dev/null
  fi
done

if [ -n "$CLIENT_TTY" ]; then
  tmux detach-client -P -t "$CLIENT_TTY" 2>/dev/null || tmux detach-client 2>/dev/null
else
  tmux detach-client 2>/dev/null
fi

exit 0
