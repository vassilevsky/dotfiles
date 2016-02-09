# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=()

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

. ~/.zshrc-git
export PROMPT='%B%T%b %~`git-prompt`%(!.#.$) '

. ~/.one-letter-aliases.sh
. ~/.git-aliases.sh

alias fbx="git config user.name i.vasilevskiy && git config user.email 'i.vasilevskiy@fun-box.ru'"
alias ghx="git config user.name 'Ilya Vassilevsky' && git config user.email 'vassilevsky@gmail.com'"

alias rrr='rubocop -a --display-cop-names $(git diff --name-only --diff-filter=ACMR master | grep .rb)'
alias cfmt='git commit -m "форматирование кода"'
alias bi='bundle install --jobs 8 --binstubs'
alias mb='middleman build --clean --verbose'
alias ms='middleman server'

mkcd() {
  mkdir -p $1 && cd $1
}

cln() {
  git clone $1 && cd ${1:t:r}
}

v() {
  vim $(echo $1 | sed -E 's/:([0-9]+):in/ +\1/')
}

sst() {
  ssh -t $1 "tmux new -A -s $1"
}

ymlfmt() {
  ruby -r yaml -e "File.write('$1', YAML.dump(YAML.load_file('$1')))"
}

mkpr() {
  if [[ -z $1 ]]
  then
    echo "mkpr TITLE"
    exit 1
  fi

  stash pull-request ${2:-develop} $(cat ~/funbox/TEAM) --title "$1" --open
}

rlz() {
  if [[ -z $1 ]]
  then
    echo "rlz VERSION"
    exit 1
  fi

  stash pull-request develop master $(cat ~/funbox/TEAM) --title "Release $1" --description 'Последний шанс найти проблемы перед релизом' --open
}

export EDITOR=vim
export LC_CTYPE=UTF-8
export LC_ALL=ru_RU.UTF-8

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

eval "$(thefuck --alias)"

export PATH="./bin:$PATH"

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/gopath
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/sbin
