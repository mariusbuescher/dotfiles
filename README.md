# Dotfiles

> My dotfiles for easier configuration

This is a subset of my current dotfiles.

## Prerequisites

I use the following software:

- zsh
- i3wm
- feh
- playerctl
- rofi

Please make sure these are installed on your system.

I am also using some custom Fonts:

- [Fontawesome](https://fontawesome.com/) for icons
- [System San Francisco Display](https://github.com/supermarin/YosemiteSanFranciscoFont)

## Installation

Clone the repository into `$HOME/.dotfiles`. Then start adding the symlinks:

- .zshrc -> .dotfile/zshrc
- .gitconfig -> .dotfiles/gitconfig
- .editorconfig -> .dotfiles/editorconfig
- .config/i3/config -> .dotfiles/config/i3/config
- .Xresources -> .dotfile/Xresources (This one is optional)

## Customization

There are some ways to customize this setup on a local machine:

- `.gitconfig` loads a file called `.gitlocal` when it is present in your home directory
- `.zshrc` loads a file called `.zshlocal` when present in your home directory

If you want to customize colors, fonts etc. you can do this by using your own `.Xresources` file. There
are a bunch of variable you can configure. Please use the `Xresources` file as a reference.

