#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add bin folder to path for easy script execution
export PATH="~/bin:$PATH"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PS1="\u@\h:[\w]\\$ \[$(tput sgr0)\]"
