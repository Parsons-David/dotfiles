# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias psg='ps -ef | grep'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

### Git Stuff
# Enable tab completion
source ~/.git-terminal-config/git-completion.bash

# Change command prompt
source ~/.git-terminal-config/git-prompt.sh

# colors!
red="\[\033[38;5;203m\]"
green="\[\033[38;05;38m\]"
blue="\[\033[0;34m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\u$green\$(__git_ps1)$blue \W $ $reset"

### Udacity Git Stuff

# Open file in chrome
alias chrome='google-chrome'
# End Chrome

# AWS CLI Client Stuff
complete -C '~/.local/bin/aws_completer' aws
# End AWS CLI Client Stuff
