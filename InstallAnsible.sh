#!/bin/bash

which brew > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "brew is not installed. Install brew."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

which ansible > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "ansible is not installed. Install ansible."
  brew install ansible
fi
