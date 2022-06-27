#!/bin/bash

source /usr/local/etc/bash_completion
source ~/Dropbox/etc/.bash-powerline.sh
source /usr/local/opt/asdf/asdf.sh

shopt -s dotglob

alias ghx="git config user.name 'Ilya Vassilevsky' && git config user.email 'vassilevsky@gmail.com'"
alias scp='scp -C'
alias ll='ls -lah'
alias s='git status'
alias co='git checkout'
alias d='git diff'
alias ds='git diff --staged'
alias a='git add --patch'
alias aa='git add . && git status'
alias u='git reset HEAD'
alias c='git commit'
alias lp='git log --patch --stat'
alias lo='git log --oneline --no-merges'
alias bb='git branch'
alias m='git merge --no-ff --no-edit'
alias rbz='git rebase -i --autosquash'
alias zbs='git rebase --continue'
alias nah='git rebase --abort'
alias mrg='git merge --no-ff --no-edit'
alias um='git checkout master  && git fetch --prune && git rebase origin/master'
alias ud='git checkout develop && git fetch --prune && git rebase origin/develop'
alias rom='um && git checkout - && rbz master'
alias rod='ud && git checkout - && rbz develop'
alias explico='bundle exec explico'

v() { vim $(echo "$1" | sed -E 's/:([0-9]+):.*/ +\1/'); }
cln() { git clone "$1" && cd "$(basename "$1" | sed 's/\.git$//')" || return; }
st() { bundle exec explico deploy staging --branch=$(git rev-parse --abbrev-ref HEAD) --env="RAILS_MASTER_KEY=$(cat config/credentials/staging.key)" $2 $3; }
on() { ssh -t app$1.fun-box.ru tmux attach; }
hh() { ruby -r yaml -e "puts(YAML.load_file('config/deploy_config.yml')['$1']['roles'].values.flatten.uniq.sort)"; }

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim

export PATH="$HOME/Dropbox/bin:$HOME/.poetry/bin:$PATH"
