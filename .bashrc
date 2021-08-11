# doxtu bashrc

# private exports
source ~/.env

# public exports
source ~/.colors
export EDITOR='vim'

# tab completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# options
shopt -s nocaseglob

# aliases
alias cp="cp -i"
alias df='df -h'
alias free='free -m'
alias ls="ls -la"

# terminal display
PS1="${bold_green}\u ${bold_purple}\W${normal} => ${reset}"

# functions
ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

gitcp () {
  git add -A
  git commit -m "$1"
  git push
}
