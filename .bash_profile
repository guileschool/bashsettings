if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

function parse_git_branch () 
{
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u@$HOSTNAME$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

alias vi='vim'
alias ls='ls -G'
alias la='ls -Alh'
alias l='ls -CF'
alias rm='rm -i'
alias mv='mv -i'

export CLICOLOR=1
export LSCOLORS=exfxcxdxcxegedabagacad
export GREP_OPTIONS='--line-number --color=auto --binary-files=without-match'
export GREP_COLOR='1;32'
export PATH=/usr/local/bin:$PATH:$HOME/bin:/opt/local/bin/:/usr/bin/Play20:/usr/bin/scala/bin:/usr/bin/sbt/bin:.
export PYTHONPATH=$PYTHONPATH:/Library/Python/2.7/site-packages/PySide:/usr/include/PySide