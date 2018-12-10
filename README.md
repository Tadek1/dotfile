# dotfile
In dotfile directory I will keep rc files for programs I use.


vim
---
Install Vundle 1st (see https://github.com/VundleVim/Vundle.vim/blob/master/README.md)

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Then in your home directory create symbolic link

````bash
$ ln -s ~/dotfile/vimrc ~/.vimrc
````
Remember to install all plugins (run vim and :PluginInstall).

tmux
----

1. Most of the cut&paste are handled with the latest tmux rev 2.6. The ubuntu 16.04 tmux rev is 2.1
To install from source tmux ver 2.6 (or later)
```bash
$ tmux -V                      # if tmux is already installed, check the version 1st
$ sudo apt-get -y remove tmux  # if not 2.6 remove it
# --- install build dependencies required for 2.6 successfull build from source
$ sudo apt-get install wget tar libevent-dev libncurses-dev 
# --- Download from github, untar, and cd to src dir (change VERSION var if required)
$ VERSION=2.6 && mkdir ~/tmux-src && wget -qO- \
    https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz | \
    tar xvz -C ~/tmux-src && cd ~/tmux-src/tmux*
# configure, make and install
$ ./configure && make -j"$(nproc)" && sudo make install
$ cd && rm -rf ~/tmux-src       # cleanup
$ tmux -V                       # check version for VERSION
```
2. Instead of regular C-b prefix it is much more convenient to remap to C-s (same row as vim hjkl).
It is also good to remap **CAPSLOCK** key to **CTRL**:
On Kubuntu (16.04), select Configure ->  Input Devices -> Keyboard -> Advance (tab) ->
   -> Caps Lock key behaviour -> Make Caps Lock an additional Ctrl
   
3. add alias to ~/.bash_aliases
```
alias tmux="tmux -2"
```
to solve problem of not showing 'visual' highlight in vim when running n tmux.
This equivalent of setting TERM=xterm-256color.

```
alias tmux="TERM=xterm-256color tmux"
```

To do:
-----
- improve tmux installation and configuration (includeing {prefix} change to <CAPS-LOCK>

Inspirations
------------
https://thoughtbot.com/upcase/onramp-to-vim

