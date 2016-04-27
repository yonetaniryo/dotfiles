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

# peco
function peco-select-history() {
	local tac
	if which tac > /dev/null; then
		tac="tac"
	else
		tac="tail -r"
	fi
	BUFFER=$(\history -n 1 | \
	eval $tac | \
	peco --query "$LBUFFER")
	CURSOR=$#BUFFER
	zle clear-screen
}
zle -N peco-select-history
bindkey '^R' peco-select-history
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
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

setopt auto_pushd
