#! /bin/env bash

>&2 echo "checking $HOME/.editorconfig"
if [ ! -h $HOME/.editorconfig ]; then
	>&2 echo "linking $HOME/.editorconfig"
	ln -s $(pwd)/.editorconfig $HOME/.editorconfig
fi
