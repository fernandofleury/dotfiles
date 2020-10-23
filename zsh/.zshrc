export ZSH="/Users/fernandogil/.oh-my-zsh"

export EDITOR=nvim

export PATH="$PATH:$HOME/.yarn/bin"
export PATH="$PATH:$HOME/.pyenv/bin"
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"

ZSH_THEME="spaceship"

plugins=(
  zsh-autosuggestions
  git
  jump
)

eval "$(nodenv init -)"
eval "$(pyenv init -)"

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

# 

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/fernandogil/.google-cloud-sdk/path.zsh.inc' ]; then . '/Users/fernandogil/.google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/fernandogil/.google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/fernandogil/.google-cloud-sdk/completion.zsh.inc'; fi
