#!/bin/bash

if ! dpkg -s tmux |grep -E "Status:.*installed";then
  sudo apt-get install tmux
fi



