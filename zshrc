# =====================================
# ZGEN
# =====================================
source ~/.dotfiles/zgen/zgen.zsh

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/git
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load mafredri/zsh-async

  # generate the init script from plugins above
  zgen save
fi

# =====================================
# Other orders of business
# =====================================

autoload -U promptinit; promptinit
prompt pure

# Include Homebrew’s sbin in PATH
export PATH="/usr/local/sbin:$PATH"

# Use NeoVim as default editor
export EDITOR=/usr/local/bin/nvim

# Set XDG_CONFIG_HOME for NeoVim et al.
export XDG_CONFIG_HOME=$HOME/.config

# Source aliases
source ~/.aliases.zsh

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


# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_DEFAULT_OPTS='
  --color dark,hl:37,hl+:43,fg+:235,bg+:-1,fg+:254
  --color info:254,prompt:37,spinner:108,pointer:37,marker:235
'
