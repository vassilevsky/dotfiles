source ~/.bash-powerline.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=vim

v() {
  vim $(echo $1 | sed -E 's/:([0-9]+):in/ +\1/')
}

eval "$(rbenv init -)"
eval "$(pyenv init -)"

export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"

export PATH=$PATH:/usr/local/opt/go/libexec/bin

. /usr/local/etc/bash_completion

alias ghx="git config user.name 'Ilya Vassilevsky' && git config user.email 'vassilevsky@gmail.com'"
alias rrr='rubocop -a --display-cop-names $(git diff --name-only --diff-filter=ACMR develop | grep .rb)'
alias bi='bundle install --jobs 8'
alias rc='bundle exec rails console'
alias st='ssh-add && bundle exec cap staging deploy'
alias s1='ssh-add && bundle exec cap staging1 deploy'
alias s2='ssh-add && bundle exec cap staging2 deploy'
alias scp='scp -C'

mkcd() {
  mkdir -p $1 && cd $1
}

cln() {
  git clone $1 && cd "$(echo "$(basename $1)" | sed 's/\.git$//')"
}

alias s='git status'
alias co='git checkout'
alias d='git diff'
alias ds='git diff --staged'
alias a='git add --patch'
alias aa='git add . && git status'
alias u='git reset HEAD'
alias c='git commit'
alias lp='git log --patch --stat'
alias lo='git log --graph --oneline --decorate'
alias bb='git branch'

alias rbz='git rebase -i --autosquash'
alias zbs='git rebase --continue'
alias nah='git rebase --abort'

alias mrg='git merge --no-ff'

alias um='git checkout master  && git fetch --prune && git merge origin/master'
alias ud='git checkout develop && git fetch --prune && git merge origin/develop'
alias rom='um && git checkout - && rbz master'
alias rod='ud && git checkout - && rbz develop'
