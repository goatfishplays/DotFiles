#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

(cat ~/.config/wpg/sequences &) # applies colors

# setup path
# Python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)" # use proper python ver

# C
export PATH="usr/bin/gcc:$PATH"

# Snap(using for multipass, remove later probs)
# export PATH="$PATH:/snap/bin"

# for kubectl plugins I think
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# API keys live in ~/.bashrc.secrets (not tracked in DotFiles)
[ -f "$HOME/.bashrc.secrets" ] && . "$HOME/.bashrc.secrets"

. /usr/share/nvm/init-nvm.sh

[ -f "/home/torpin/.ghcup/env" ] && . "/home/torpin/.ghcup/env" # ghcup-env