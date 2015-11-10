# =====================================
# Antigen config
# =====================================

# Source Antigen
source ~/.dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh

# Bundle some oh-my-zsh plugins
antigen bundle git

# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Use Pure prompt
antigen bundle mafredri/zsh-async
antigen bundle colepeters/pure

# That's a wrap!
antigen apply

# =====================================
# Other orders of business
# =====================================

# Use NeoVim as default editor
export EDITOR=/usr/local/bin/nvim

# Set XDG_CONFIG_HOME for NeoVim et al.
export XDG_CONFIG_HOME=$HOME/.config

# Source aliases
source ~/.aliases.zsh

# Source functions
source ~/.functions.zsh

# Source secrets
source ~/.secrets

# Override rm -i alias which makes rm prompt for every action
alias rm='nocorrect rm'

# Git
__git_files () {
  _wanted files expl 'local files' _files
}
# Don't try to glob with zsh so you can do
# stuff like ga *foo* and correctly have
# git add the right stuff
alias git='noglob git'

