#!/bin/env bash

>&2 echo "checking $HOME/.config/ghostty"
if [ ! -h $HOME/.config/ghostty ]; then
	>&2 echo "linking $HOME/.config/ghostty"
	ln -s $(pwd)/.config/ghostty $HOME/.config/ghostty
fi
