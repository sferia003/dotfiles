DISABLE_MAGIC_FUNCTIONS=true

export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="simple"

DISABLE_LS_COLORS="true"

plugins=(git zoxide fzf)

source $ZSH/oh-my-zsh.sh

alias df='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
