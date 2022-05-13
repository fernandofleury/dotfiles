export ZSH="/Users/fernandogil/.oh-my-zsh"

export EDITOR=nvim

ZSH_THEME="spaceship"

plugins=(
  zsh-autosuggestions
  git
  jump
  asdf
)

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(nodenv init -)"

. $HOME/.asdf/asdf.sh

source $ZSH/oh-my-zsh.sh

alias alacrittyconfig="nvim ~/.config/alacritty/alacritty.yml"
alias zshconfig="nvim ~/.zshrc"
alias vimconfig="nvim ~/.config/nvim/init.lua"
alias tmuxconfig="nvim ~/.tmux.conf"
alias yabaiconfig="nvim ~/.yabairc"
alias skhdconfig="nvim ~/.skhdrc"
alias j="jump"

SPACESHIP_CHAR_SYMBOL="~ "
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_NODE_SYMBOL=""
SPACESHIP_GIT_BRANCH_PREFIX="\0"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
