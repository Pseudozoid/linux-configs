
#!/bin/bash

tasks=$(awk '/^-/ {print}' ~/notes/journal/agenda.md)
printf "%s\n" "${tasks}"
