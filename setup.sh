#! /bin/env bash

for f in .setup.d/*; do
    . ./$f
done
