#!/bin/bash

TARGET_DATE="2025-12-31"
target_sec=$(date -d "$TARGET_DATE" +%s)
current_sec=$(date +%s)
difference=$(( (target_sec - current_sec) / 86400 ))

echo ${difference}
