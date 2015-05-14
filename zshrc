# Initialise Prezto
source ~/.zprezto/init.zsh

# Source aliases
source ~/.aliases.zsh

# Source functions
source ~/.functions.zsh

# Source secrets
source ~/.secrets

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Override rm -i alias which makes rm prompt for every action
alias rm='nocorrect rm'

# Source virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# Add depot_tools to PATH (Chromium)
export PATH="$PATH:$HOME/Developer/depot_tools"

# Git
__git_files () {
  _wanted files expl 'local files' _files
}
# Don't try to glob with zsh so you can do
# stuff like ga *foo* and correctly have
# git add the right stuff
alias git='noglob git'

export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# tab completion for NVM
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
