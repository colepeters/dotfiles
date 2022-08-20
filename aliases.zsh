### DOTFILES ###
alias cdd='cd ~/.dotfiles'
alias npmgen='npm ls -g --depth=0 > ~/.dotfiles/npm-global-installs.txt'

### GENERAL ###
alias la='exa -la'

### NEOVIM ###
alias nv='nvim'                             # nv is quicker to write than nvim
alias ne='nvim ~/.config/nvim/init.lua'     # Quick access to Neovim config

### ZSH ###
alias ze='nv ~/.zshrc'                      # Quick access to Zsh config
alias zr='source ~/.zshrc'                  # Reload Zsh config

### GIT ###
alias gca='git commit --amend'
alias gclean='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d' # git 'clean' (delete local branches merged to master/dev)
alias gcm='git ci -m'
alias gco='git co'
alias gl='git l'
alias gpl='git pull'
alias gps='git push'
alias gs='git status'
alias ts='tig status'

### HOMEBREW ###
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'

### HTTPIE ###
alias http='http --style=solarized'

### GIMME USER’S PRIVATE ALIASES PLZ ###
source ~/.aliases.user.zsh
