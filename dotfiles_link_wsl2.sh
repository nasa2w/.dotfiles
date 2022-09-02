#! /bin/bash

SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
ln -s $SCRIPT_DIR/.vimrc ~/.vimrc
ln -s $SCRIPT_DIR/.bashrc ~/.bashrc
