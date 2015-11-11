# vim
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi
alias ve='vim ~/.vimrc'

# nvim
alias nv='nvim'
alias ne='nvim ~/.config/nvim/init.vim'

# zsh
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'

# git
alias gs='git status'
alias gcm='git ci -m'
alias gco='git co'
alias gl='git l'
alias gpl='git pull'
alias gps='git push'
alias ts='tig status'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'

# Node/NPM
alias ffs='rm -rf node_modules/ && npm cache clean && npm i'

# Call user aliases
source ~/.aliases.user.zsh
