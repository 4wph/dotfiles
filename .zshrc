source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$PATH:~/.local/bin/
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export LEIN_HOME=$XDG_DATA_HOME/lein
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export WINEPREFIX=$XDG_DATA_HOME/wineprefixes/default
export SQLITE_HISTORY=$XDG_DATA_HOME/sqlite_history
export DOCUMENTS=/home/HDD/Documents
export APPS=/home/HDD/Downloads/Apps
export DOWNLOADS=/home/HDD/Downloads
export PROJECTS=/home/HDD/Documents/7CC

source ~/.aliases

setopt COMPLETE_ALIASES

fpath+=$XDG_CONFIG_HOME/zsh/typewritten

autoload -Uz compinit
compinit
autoload -U promptinit
promptinit

prompt typewritten
