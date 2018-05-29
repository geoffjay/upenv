#!/bin/bash

__install() {
  if ! [[ -x "$(command -v npm)" ]]; then
    dist="$(lsb_release -i | sed 's/^.*:\s\(.*\)$/\L\1/')"
    if [[ $dist == "fedora" ]]; then
      sudo dnf install nodejs
    elif [[ $dist == "arch" ]]; then
      sudo pacman -S nodejs npm
    fi
  fi
}

__global() {
  mkdir ~/.npm-global
  npm config set prefix '~/.npm-global'
  echo 'PATH=~/.npm-global/bin:$PATH' >> ~/.profile
}

__install
__global

source ~/.profile
