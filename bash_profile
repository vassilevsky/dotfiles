export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
eval "$(rbenv init -)"
eval "$(pyenv init -)"
export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"
export PATH=./bin:$PATH
export PROMPT_COMMAND='echo -ne "\033]0;$(basename ${PWD/$HOME/\~})\007"'
export PS1=' ${PWD/$HOME/~} $(test -d .git && git rev-parse --abbrev-ref HEAD) $ '
source "$HOME/.iterm2_shell_integration.bash"
