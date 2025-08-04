#!/bin/bash

if pgrep -x "hyprsunset" > /dev/null; then
    pkill -HUP -f hyprsunset

  else
    hyprsunset -t 5000
fi
