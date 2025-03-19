#! /bin/env bash

>&2 echo "checking $HOME/.config/nvim"
if [ ! -h $HOME/.config/nvim ]; then
    >&2 echo "linking $HOME/.config/nvim"
    ln -s $(pwd)/.config/nvim $HOME/.config/nvim
fi
