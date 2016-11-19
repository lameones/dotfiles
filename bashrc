# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#fix putty bullshit

# Set prompt
PS1="[\u@\h \W] "

# Aliases
alias mkdir='mkdir -p'
alias vi='vim'
alias ll='ls -la'

# The colors Duke, the colors!
