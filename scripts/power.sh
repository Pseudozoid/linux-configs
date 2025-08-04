#!/bin/bash

read -r -p "Are you sure you want to shut down? [y/N] " choice

case "$choice" in
    [yY])
        figlet "See you, space cowboy..." | lolcat -a -s 120
        sleep 1
        shutdown now
        ;;
    *)
        fortune -s | cowsay | lolcat
        ;;
esac

