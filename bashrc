# ian's bashrc

# set alias
alias g="git"
alias v="vim"
alias ll="ls -l"
alias la="ls -a"

# tmux aliases
alias tma="tmux a -t"
alias tmn="tmux new -s"
alias tml="tmux ls"
alias tmk="tmux kill-session -t"
alias tmp="tmux show-buffer | nc localhost 2224"

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
