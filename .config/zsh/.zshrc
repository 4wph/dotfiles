source $ZDOTDIR/.aliases

setopt COMPLETE_ALIASES

autoload -Uz compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#TYPEWRITTEN_CURSOR=block
#TYPEWRITTEN_SYMBOL="->"
#fpath+=$XDG_CONFIG_HOME/zsh/typewritten
#autoload -U promptinit
#promptinit
#prompt typewritten
