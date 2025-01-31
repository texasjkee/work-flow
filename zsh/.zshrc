export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

alias vim="nvim"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions copydir)
# function copydir {
#   pwd | tr -d "\r\n" | xclip -selection clipboard
# }

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/home/texas/.local/bin"
