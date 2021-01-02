source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZDOTDIR/.aliases

setopt COMPLETE_ALIASES

fpath+=$XDG_CONFIG_HOME/zsh/typewritten

autoload -Uz compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
autoload -U promptinit
promptinit

prompt typewritten
