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
alias bi='bundle install --binstubs'
alias mb='middleman build --clean --verbose'
alias ms='middleman server'

mkcd() {
  mkdir -p $1 && cd $1
}

cln() {
  git clone $1 && cd ${1:t:r}
}

v() {
  vim $(echo $1 | sed -e 's/:/ +/g' -e 's/\+in//g')
}

sst() {
  ssh -t $1 "tmux new -A -s $1"
}

export EDITOR=vim
export LC_CTYPE=UTF-8
export LC_ALL=ru_RU.UTF-8

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh --no-rehash)"

eval "$(thefuck --alias)"

export PATH="./bin:$PATH"

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/gopath
export PATH=$PATH:$GOPATH/bin
