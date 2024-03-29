
#   ___                       _
#  / __|___ _ _  ___ _ _ __ _| |
# | (_ / -_) ' \/ -_) '_/ _` | |
#  \___\___|_||_\___|_| \__,_|_|

# Imports
source $HOME/.dotfiles/aliases.zsh

# Options
setopt autocd

# Export paths
export PATH=/Users/ciara/.local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export XDG_CONFIG_HOME="$HOME/.config/zsh"

#   /_\  _ _| |_(_)__ _ ___ _ _
#  / _ \| ' \  _| / _` / -_) ' \
# /_/ \_\_||_\__|_\__, \___|_||_|
#                 |___/

source $HOME/antigen.zsh

# Specify ZSH
antigen use oh-my-zsh

# Plugins
antigen bundle auto-color-ls
antigen bundle autoupdate-antigen
antigen bundle brew
antigen bundle colored-man-pages
antigen bundle command-not-found
antigen bundle git
antigen bundle heroku
antigen bundle lein
antigen bundle osx
antigen bundle pip
antigen bundle ssh-agent
antigen bundle tmux
antigen bundle

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

#if [ -n "$SSH_CLIENT" ]; then
#  antigen theme candy
#else
#  antigen theme ciarafair/nothing nothing
#fi

antigen theme ciarafair/nothing nothing
antigen apply

#  _____
# |_   _| __ _  ___ __
#   | || '  \ || \ \ /
#   |_||_|_|_\_,_/_\_\

#if [ -n "$SSH_CLIENT" ]; then
#  echo "In ssh session. Not connecting to TMUX."
#else
#  if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
#    tmux attach -t default || tmux new
#  fi
#fi
