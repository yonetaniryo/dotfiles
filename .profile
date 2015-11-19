# source ~/.bashrc
# MacPorts Installer addition on 2012-02-08_at_22:17:23: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export http_proxy=http://proxy.iis.u-tokyo.ac.jp:8080

# Added by Canopy installer on 2014-01-21
# VIRTUAL_ENV_DISABLE_PROMPT can be set to '' to make bashprompt show that Canopy is active, otherwise 1
# VIRTUAL_ENV_DISABLE_PROMPT=1 source /Users/yonetani/Library/Enthought/Canopy_64bit/User/bin/activate

# Python
export PYTHONIOENCODING=utf-8
alias nb="jupyter-notebook"
alias nbr="jupyter-notebook --no-browser --ip='157.82.147.147'"
export CPLEX_PATH="/Users/yonetani/Dropbox/programs/downloaded/IBM/ILOG/CPLEX_Studio1261/"

# vi
alias vi='/usr/local/bin/vim'
alias vim='/usr/local/bin/vim'

# git 
alias gst='git status'
alias gbra='git branch'
alias gco='git checkout'
alias glog='git log --oneline'

# misc
alias ll='ls -laG'
lt() { tree -fhCa -L $1 | less; }
alias tm='tmux attach'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# added by Anaconda 2.3.0 installer
export PATH="/Users/yonetani/anaconda/bin:$PATH"

# added for el capitan latex
export PATH="/Library/TeX/Root/bin/universal-darwin:$PATH"
