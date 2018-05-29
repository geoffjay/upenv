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

__profile
__bash

source ~/.bashrc
