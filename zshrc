#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Define ZSH-Modules needed
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt' \
  'git' \
  'tmux' \
  'syntax-highlighting' \
  'autosuggestions'

zstyle ':prezto:module:editor' key-bindings 'vi'
zstyle ':prezto:module:prompt' pwd-length 'short'
zstyle ':prezto:module:utility' safe-ops 'yes'

# Load zsh modules
zstyle -a ':prezto:load' pmodule 'pmodules'
pmodload "$pmodules[@]"
unset pmodules

# Set editor variable, no one needs nano.
export EDITOR=vi
export VISUAL=vim

# Load local override
if [[ -f "$HOME/.zshlocal" ]]; then
  source "$HOME/.zshlocal"
fi

