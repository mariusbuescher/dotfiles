#! /bin/env bash

>&2 echo "checking $HOME/.config/tmux"
if [ ! -h $HOME/.config/tmux ]; then
	>&2 echo "linking $HOME/.config/tmux"
	ln -s $(pwd)/.config/tmux $HOME/.config/tmux
fi
