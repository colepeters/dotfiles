# vim
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi
alias ve='vim ~/.vimrc'

# nvim
alias nv='nvim'
alias ne='nvim ~/.nvimrc'

# zsh
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'

# git
alias gs='git status'
alias gcm='git ci -m'
alias gco='git co'
alias gl='git l'
alias gd='git diff'
alias gpl='git pull'
alias gps='git push'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias ts='tig status'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'

# Node/NPM
alias ffs='rm -rf node_modules/ && npm cache clean && npm i'

# Call user aliases
source ~/.aliases.user.zsh
