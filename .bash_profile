# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# git branch
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1 **)/'
}

# ls color enable
export CLICOLOR=1
# export LSCOLORS=dxfxcxdxbxegedabagacad
export LSCOLORS="gxfxcxdxcxegedabagacad"

# PS1
export PS1="\[\033[1;32m\]\u\[\033[0m\]\[\033[1;32m\]@\h\[\033[0m\] \[\033[1;33m\]\w\[\033[0m\] \n\[\033[1;35m\]\$(parse_git_branch)\\[\033[0m\]\[\033[1;31m\] \$\[\033[0m\] "
