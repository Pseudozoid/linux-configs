#!/bin/bash

CONTENT=$(awk '
/## To-Do/ {flag=1}
flag && /^## / && !/## To-Do/ {exit}
flag
' "$HOME/notes/journal/personal/agenda.md")

jq -cn \
  --arg text " " \
  --arg tooltip "$CONTENT" \
  '{text:$text, tooltip:$tooltip}'
