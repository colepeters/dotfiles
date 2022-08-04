# =====================================
# ZGEN
# =====================================
source ~/.dotfiles/zgen/zgen.zsh

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/asdf
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load mafredri/zsh-async
  zgen load softmoth/zsh-vim-mode
  zgen load denysdovhan/spaceship-prompt spaceship

  # generate the init script from plugins above
  zgen save
fi

# =====================================
# Other orders of business
# =====================================

autoload -U promptinit; promptinit

# Include Homebrew’s sbin in PATH
export PATH="$PATH:/usr/local/sbin"

# Include ~/Developer/scripts in PATH if it exists
if [ -d "$HOME/Developer/scripts" ] ; then
  export PATH="$PATH:$HOME/Developer/scripts"
fi

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
# export FZF_DEFAULT_OPTS='
#   --color dark,hl:37,hl+:43,fg+:235,bg+:-1,fg+:254
#   --color info:254,prompt:37,spinner:108,pointer:37,marker:235
# '

###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

# Prefer Homebrew Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# CL editing
bindkey -v

# zsh-vim-mode
MODE_CURSOR_VICMD="block"
MODE_CURSOR_VIINS="blinking bar"

# Spaceship prompt options
SPACESHIP_PROMPT_ORDER=(
  time
  user
  dir
  git
  exec_time
  line_sep
  vi_mode
  jobs
  exit_code
  char
)
SPACESHIP_CHAR_SYMBOL="❯ "
SPACESHIP_EXEC_TIME_COLOR="243"
SPACESHIP_EXEC_TIME_PREFIX="%F{243}∆t=%f"
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_STATUS_PREFIX=" ("
SPACESHIP_GIT_STATUS_SUFFIX=")"
SPACESHIP_VI_MODE_SHOW=false

