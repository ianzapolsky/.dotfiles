# ian's bashrc

# set alias
alias g="git"
alias v="vim"
alias ll="ls -l"
alias la="ls -a"

# set prompt
source ~/.dotfiles/prompt

# set ls colors
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
  alias ls='ls --color=auto'
elif [[ "$unamestr" == 'Darwin' ]]; then
  export CLICOLOR=1
  export LSCOLORS='Exfxcxdxbxegedabagacad'
fi
