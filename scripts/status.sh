#!/bin/bash

# script for gathering system information

green='\e[32m'
blue='\e[34m'
clear='\e[0m'

ColorGreen() {
  echo -ne $green$1$clear
}

ColorBlue() {
  echo -ne $blue$1$clear
}

function memory_check() {
  echo ""
  echo "Memory usage: "
  free -h
  echo ""
}

function cpu_check() {
  echo ""
  echo "CPU load: "
  uptime
  echo ""
}

function kernel_check() {
  echo ""
  echo "Kernel Version: "
  uname -r
  echo ""
}


function menu() {
  echo "---Status Check---
  $(ColorGreen '1)') Memory Check
  $(ColorGreen '2)') CPU Load
  $(ColorGreen '3)') Kernel Version
  $(ColorGreen '0)') Exit
}

memory_check;
cpu_check;
kernel_check;

