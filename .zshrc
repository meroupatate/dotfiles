# Path to your oh-my-zsh installation.
export ZSH="/Users/alicezhen/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Pyenv config
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Go path config
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Scaleway CLI autocomplete initialization.
eval "$(scw autocomplete script shell=zsh)"
