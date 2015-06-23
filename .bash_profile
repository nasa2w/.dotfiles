export PATH=/usr/local/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias ls='ls -GF'
alias vi='vim'

# title bar (iterm2)
PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'

if brew info git > /dev/null 2>&1 ; then
  #  git completion
  GIT_COMPLETION_DIR=`dirname "$(brew list git | grep INSTALL_RECEIPT.json$)"`/etc/bash_completion.d
  source $GIT_COMPLETION_DIR/git-prompt.sh
  source $GIT_COMPLETION_DIR/git-completion.bash
  GIT_PS1_SHOWDIRTYSTATE=true

  # prompt with git branch
  export PS1='\[\e[36m\]\u@\h:\w\[\e[0m\]\[\e[35m\]$(__git_ps1)\[\e[0m\] $ '

else
  # prompt
  export PS1='\[\e[36m\]\u@\h:\w\[\e[0m\] $ '
fi


export PATH=$HOME/.nodebrew/current/bin:$PATH
