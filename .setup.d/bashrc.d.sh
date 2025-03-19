#! /bin/env bash

>&2 echo "checking $HOME/.bashrc.d"
if [ ! -h $HOME/.bashrc.d ]; then
    >&2 echo "linking $HOME/.bashrc.d"
    ln -s $(pwd)/.bashrc.d $HOME/.bashrc.d
fi
