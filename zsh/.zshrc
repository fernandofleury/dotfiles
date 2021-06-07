export ZSH="/Users/fernandogil/.oh-my-zsh"

export EDITOR=nvim

ZSH_THEME="spaceship"

plugins=(
  zsh-autosuggestions
  git
  jump
)

eval "$(nodenv init -)"

source $ZSH/oh-my-zsh.sh

alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias tmuxconfig="nvim ~/.tmux.conf"
alias j="jump"
alias y="yarn"

SPACESHIP_CHAR_SYMBOL="~ "
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_NODE_SYMBOL=""
SPACESHIP_GIT_BRANCH_PREFIX="\0"

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
fi
