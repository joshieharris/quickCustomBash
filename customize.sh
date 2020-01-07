#!/bin/bash

printf "What distro are you using?\nUbuntu = 1\nAmazon Linux\n"

read userInput

if [ "$userInput" = "1" ]; then
  printf "Initializing Ubuntu setup...\n"
  ./scripts/ubuntu.sh
elif [ "$userInput" = "2" ]; then
  printf "Initializing Amazon Linux setup...\n"
  ./scripts/amazonlinux.sh
else
  printf "What are you using????\n"
fi
