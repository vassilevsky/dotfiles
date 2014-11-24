# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=()

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

PATH="$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/opt/X11/bin"

export GOROOT='/usr/local/go/'
export GOPATH="$HOME/p/go"
export PATH="$PATH:/usr/local/go/bin:$HOME/p/go/bin"

. ~/.zshrc-git
export PROMPT='%B%T%b %~`git-prompt`%(!.#.$) '

. ~/.one-letter-aliases.sh
. ~/.git-aliases.sh

# Git aliases
clone(){git clone $1 && cd $(basename $1)}
alias cfmt='git commit -m "форматирование кода"'
alias my='git log --all --pretty=format:"%ad %Cblue%h%Cred%d %Cgreen%an %Creset%s" --date=short | grep vasilevskiy'
alias wd='watch git diff --color'
      wdf(){watch colordiff -u $1 $2}
alias wl='tail -f log/development.log'
alias ws='tail -f log/sidekiq.log'
alias upd='sudo aptitude update && sudo aptitude full-upgrade'
alias bo='EDITOR=gvim bundle open'
alias mb='bundle exec middleman build --clean --verbose'
alias ms='bundle exec middleman server'
alias fbx="git config user.name i.vasilevskiy && git config user.email 'i.vasilevskiy@fun-box.ru'"
alias ghx="git config user.name 'Ilya Vassilevsky' && git config user.email 'vassilevsky@gmail.com'"
alias veu='veye projects update rubygem_gemfile_lock_1 Gemfile.lock'
v(){vim `echo $1 | sed -e 's/:/ +/g' -e 's/\+in//g'`}

# Misc. aliases
   mkcd(){mkdir -p $1 && cd $1}
alias tt='t timeline'
alias td='todo.sh'
alias sha256='shasum -a 256'
alias win7='VBoxManage startvm c5b42d30-a357-4328-83c6-1c330fe1dbbb'

export EDITOR=vim
export LC_CTYPE=UTF-8
export LC_ALL=ru_RU.UTF-8
export RBENV_VERSION=2.1.5

export PATH="$HOME/.bin:$PATH"

export PATH="$PATH:/usr/local/lib/node_modules"
source $(brew --prefix nvm)/nvm.sh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh --no-rehash)"
