#! /bin/env bash

>&2 echo "checking $HOME/.gitconfig"
if [ ! -h $HOME/.gitconfig ]; then
	>&2 echo "linking $HOME/.gitconfig"
	ln -s $(pwd)/.gitconfig $HOME/.gitconfig
fi

>&2 echo "checking $HOME/.gitignore_global"
if [ ! -h $HOME/.gitignore_global ]; then
	>&2 echo "linking $HOME/.gitignore_global"
	ln -s $(pwd)/.gitignore_global $HOME/.gitignore_global
fi
