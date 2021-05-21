export ZSH="/Users/patiochair/.oh-my-zsh"

ZSH_THEME="dpoggi"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# export PATH=$PATH:$SOME_OTHER_PATH/thing
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

function listglobals {
  echo "📦 Listing global packages for \"$1\""
  sleep 1
  if [[ $1 == "yarn" ]]; then
    yarn global list
  elif [[ $1 == "npm" ]]; then
    npm list -g --depth 0
  else
    echo "📦❓ Unknown package manager \"$1\""
  fi
  
}

alias reload="source ~/.zshrc"

alias yarn:g="listglobals yarn"
alias npm:g="listglobals npm"
