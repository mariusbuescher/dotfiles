#! /bin/env bash

if [ ! -h $HOME/.config/nvim ]; then
    2&> echo "linking neovim config"
    ln -s $(pwd)/.config/nvim $HOME/.config/nvim
fi
