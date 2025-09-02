#!/bin/env bash

>&2 echo "checking $HOME/.config"
if [ ! -d $HOME/.config ]; then
	>&2 echo "creating directory $HOME/.config"
	mkdir -p $HOME/.config
fi

for f in .setup.d/*; do
    . ./$f
done
