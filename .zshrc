#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# exports
export PATH=/Applications/Android\ SDK\ Bundle/sdk/platform-tools:/usr/local/Cellar/ruby/1.9.3-p327/bin:$PATH
export PATH=$PATH:/Applications/CMake.app/Contents/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# MacPorts Installer addition on 2014-04-23_at_16:09:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=$PATH:/Applications/AWS-ElasticBeanstalk-CLI-2.6.4/eb/macosx/python2.7/:/usr/local/bin:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin
export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk
source ~/.nvm/nvm.sh
export NVM_SYMLINK_CURRENT=true

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# alias
# Docker Compose
alias fig="docker-compose";
## Docker Machine
alias dm="docker-machine";
## Docker Machine default VM exports.
alias dmd="eval '$(docker-machine env default)'";
## the fuck
alias fuck='eval $(thefuck $(fc -ln -1))'
# You can use whatever you want as an alias, like for Mondays:
alias FUCK='fuck'
