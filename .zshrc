source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.aliases

setopt COMPLETE_ALIASES

fpath+=$XDG_CONFIG_HOME/zsh/typewritten

autoload -Uz compinit
compinit
autoload -U promptinit
promptinit

prompt typewritten
