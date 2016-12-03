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
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/opt/local/bin:/opt/local/sbin"
# other paths 
source ~/.profile
source ~/.aliases

bindkey -r '^[l'
bindkey -r '^[h'
bindkey -r '^[k'
bindkey -r '^[j'
bindkey -r '^[w'
bindkey -r '^[b'
bindkey '^[l' forward-char 
bindkey '^[h' backward-char
bindkey '^[w' forward-word
bindkey '^[b' backward-word
bindkey '^[k' up-line-or-history
bindkey '^[j' down-line-or-history

# autojump
[[ -s /home/yonetani/.autojump/etc/profile.d/autojump.sh ]] && source /home/yonetani/.autojump/etc/profile.d/autojump.sh
