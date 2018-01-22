#!/bin/bash

if ! dpkg -s tmux |grep -E "Status:.*installed" >/dev/null ;then
  sudo apt-get install tmux
fi

# On Kubuntu (16.04), select Configure ->
# -> Input Devices -> Keyboard -> Advance (tab) ->
#                  -> Caps Lock key behaviour -> Make Caps Lock an additional Ctrl


