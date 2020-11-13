source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.aliases
export PATH=$PATH:~/.local/bin/

autoload -Uz compinit
compinit
setopt COMPLETE_ALIASES

PROMPT='%F{blue}λ '
RPROMPT='%1d'
