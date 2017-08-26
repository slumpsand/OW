#!/bin/bash

build/cli
tput setaf 3 && tput bold
read -p "Press any key to continue ..." -n1 -s
tput sgr0
