# ian's bashrc

# set alias
alias g="git"
alias gfp="git fetch && git pull"
alias v="vim"
alias ll="ls -l"
alias la="ls -a"
alias tma="tmux a -t"
alias tmn="tmux new -s"
alias tml="tmux ls"
alias tmk="tmux kill-session -t"

alias ack="ack --ignore-dir pkg"
alias json_xs="python -m json.tool"

# use vimdiff for git diff
alias gitdiff='git difftool --tool=vimdiff'

# set prompt
source ~/.dotfiles/prompt

# turn on git autocomplete
if [ -f ~/.dotfiles/git-completion.bash ]; then
  . ~/.dotfiles/git-completion.bash
  __git_complete g __git_main
fi

# set ls colors
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
  alias ls='ls --color=auto'
elif [[ "$unamestr" == 'Darwin' ]]; then
  export CLICOLOR=1
  export LSCOLORS='Exfxcxdxbxegedabagacad'
fi

export VISUAL=vim
export EDITOR="$VISUAL"

# add ~/.dotfiles/bin to path
export PATH=$PATH:~/.dotfiles/bin
