#! /bin/env bash

>&2 echo "checking $HOME/.profile"
if [ ! -h $HOME/.profile ]; then
	>&2 echo "linking $HOME/.profile"
	ln -s $(pwd)/.profile $HOME/.profile
fi
