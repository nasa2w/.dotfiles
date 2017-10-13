export PATH=/usr/local/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

alias ls='ls -GF'
alias vi='vim'

# title bar (iterm2)
PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'

# brew info git
if git --version > /dev/null 2>&1 ; then
  #  git completion
  # 遅いかもなので決め打ち
  # GIT_COMPLETION_DIR=`dirname "$(brew list git | grep INSTALL_RECEIPT.json$)"`/etc/bash_completion.d
  GIT_COMPLETION_DIR=/usr/local/Cellar/git/2.7.1/etc/bash_completion.d
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
export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_66`
export ANDROID_HOME=/Users/nasa/devs/android-sdk-macosx
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PATH=$HOME/.ndenv/bin:$PATH
eval "$(ndenv init -)"

# lshost, lssh
export PATH=$HOME/bin:$PATH
