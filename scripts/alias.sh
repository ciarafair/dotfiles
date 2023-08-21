#!/usr/bin/env zsh

#   ___                       _
#  / __|___ _ _  ___ _ _ __ _| |
# | (_ / -_) ' \/ -_) '_/ _` | |
#  \___\___|_||_\___|_| \__,_|_|

alias neof="clear && neofetch"
alias pipes="pipes.sh -t 3"
alias clock="tmux clock-mode"
alias matrix="cmatrix -a -b -s"
alias catterm="arttime --nolearn -a kissingcats -b kissingcats2 -t 'And you know I like you the best - Starry Cat' --ac 3"
alias tacoterm="arttime --nolearn -a taco -t 'Taco Terminal' --ac 3"

#  _  _          _           _   _
# | \| |__ ___ _(_)__ _ __ _| |_(_)___ _ _
# | .` / _` \ V / / _` / _` |  _| / _ \ ' \
# |_|\_\__,_|\_/|_\__, \__,_|\__|_\___/_||_|
#                 |___/

# Tmux
alias tmk="killall tmux;tmux new -Asmain"
alias tls="tmux ls "
alias tma="tmux a"
alias tm="tmux new -Asmain"

# File Explorer
alias n="nnn"
alias N="sudo -E nnn -dH"

#  _____         _
# |_   _|__  ___| |___
#   | |/ _ \/ _ \ (_-<
#   |_|\___/\___/_/__/

# Disk Usage
alias df="duf"

# File search
alias ls="exa -a --color=always --group-directories-first"

# Benchmarks
alias fio1="fio --ioengine=libaio --direct=1 --sync=1 --rw=read --bs=4K --numjobs=1 --iodepth=1 --runtime=60 --time_based --name seq_read --filename=/dev/sda"
alias speed="speedtest-cli --simple"

# Initialize Github
alias conf="git --git-dir=$HOME/Documents/Github/Dotfiles --work-tree=$HOME/.config"
