### DOTFILES ###
alias cdd='cd ~/.dotfiles'

### NEOVIM ###
alias nv='nvim'                             # nv is quicker to write than nvim
alias ne='nvim ~/.config/nvim/init.vim'     # Quick access to Neovim config

### ZSH ###
alias ze='nv ~/.zshrc'                      # Quick access to Zsh config
alias zr='source ~/.zshrc'                  # Reload Zsh config

### GIT ###
alias gs='git status'
alias gcm='git ci -m'
alias gco='git co'
alias gl='git l'
alias gpl='git pull'
alias gps='git push'
alias ts='tig status'

### HOMEBREW ###
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'

### HTTPIE ###
alias http='http --style=solarized'

### GIMME USER’S PRIVATE ALIASES PLZ ###
source ~/.aliases.user.zsh
