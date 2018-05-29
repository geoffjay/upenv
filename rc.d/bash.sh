#!/bin/bash

__profile() {
  touch ~/.profile
}

__bash() {
  mkdir -p ~/.bash
  touch ~/.bash/rc
  touch ~/.bash/aliases
  ln -s ~/.bash/rc ~/.bashrc
}

if [[ $1 == '--fake' ]]; then
  echo "Fake - for testing"
else
  __profile
  __bash

  source ~/.bashrc
fi
