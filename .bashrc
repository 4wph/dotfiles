# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
		color_prompt=yes
	else
		color_prompt=
	fi
fi

# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# define which extractor to use (usage: ex <file>)
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'

# ⌂ / 🏠

# Fancy prompt
#function update_ps1() {
#	pwd2=$(sed -e "s:$HOME:🏠:" -e "s:/: › :g" <<<$PWD)
#	PS1="┌╼ \[\033[1;44m\]\[\033[1;30m\] $pwd2 \[\033[47m\]\[\033[30m\]$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\[\033[00m\]\n└─────╼ "
#}
#
#PROMPT_COMMAND="update_ps1"

# Minimal prompt (no tilde, ugly in Cascadia code font)
PS1='\[\033[01;37m\]${PWD##*/} \[\033[01;34m\]$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ \[\033[00m\]'
# Tilde alternative would be '$(basename "\w")'

# Show system information when opening the shell
#bash ~/Downloads/ufetch.sh

export PATH=$PATH:~/.local/bin/

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
