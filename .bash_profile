export PATH=/Applications/Android\ SDK\ Bundle/sdk/platform-tools:/usr/local/Cellar/ruby/1.9.3-p327/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Your previous /Users/PureWind/.bash_profile file was backed up as /Users/PureWind/.bash_profile.macports-saved_2014-04-23_at_16:09:20
##

# MacPorts Installer addition on 2014-04-23_at_16:09:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=$PATH:/Applications/AWS-ElasticBeanstalk-CLI-2.6.4/eb/macosx/python2.7/:/usr/local/bin:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin
export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk
source ~/.nvm/nvm.sh


# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# git branch
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# ls color enable
export CLICOLOR=1
# export LSCOLORS=dxfxcxdxbxegedabagacad
export LSCOLORS="gxfxcxdxcxegedabagacad"

# PS1
export PS1="\[\033[1;32m\]\u\[\033[0m\]\[\033[1;32m\]@\h\[\033[0m\] \[\033[1;33m\]\w\[\033[0m\] \n\[\033[1;35m\]\$(parse_git_branch)\\[\033[0m\]\[\033[1;31m\] \$\[\033[0m\] "
