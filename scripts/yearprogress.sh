#!/bin/bash

now=$(date +%s)
start=$(date -d "$(date +%Y)-01-01 00:00:00" +%s)
end=$(date -d "$(( $(date +%Y) + 1))-01-01 00:00:00" +%s)
progress=$(( (now - start) * 100 / (end - start) ))

bar=""
for ((i = 0; i < 20; i++)); do
  if (( i < progress / 5 )); then
    bar+="█"
  else
    bar+="░"
  fi
done

tooltip="Day $(date +%j) of 365"
echo "$progress% [$bar]"

