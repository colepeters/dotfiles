dotfiles
============

Configurations and optimisations for Zsh, Git, Neovim, etc.

These dotfiles have been created for my own use and I make no assurances of them working for anyone else. That said, I like sharing these things in the open for others to borrow from, so please make use of these as you like.

## Usage (macOS)
These instructions have been tested on my own machine (macOS 11, using the latest version of [iTerm2](https://www.iterm2.com/)). They presume that you do **not** already have a `.dotfiles/` directory in your user (`~/`) directory.

### Prerequisites

1. Install [Homebrew](http://brew.sh/)
1. Install [NodeJS](https://nodejs.org/)
1. Install [Neovim](https://neovim.io)
1. Install [tree-sitter](https://github.com/tree-sitter/tree-sitter) and [luajit](https://github.com/LuaJIT/LuaJIT) for use in Neovim: `brew install tree-sitter luajit`
    _(These may have been preinstalled with Neovim; if so, skip this step.)_
1. Install [ripgrep](https://github.com/BurntSushi/ripgrep) for use with Telescope.nvim: `brew install ripgrep`

### Install

```shell
# Install ZSH via Homebrew (usually more up to date that macOS default)
brew install zsh

# Add zsh to standard shells
sudo vi /etc/shells              # 👈 Add /opt/homebrew/bin/zsh at the end of this file

# Switch into Zsh
chsh -s /opt/homebrew/bin/zsh

# Clone the repo to into a ".dotfiles" directory in your user directory
git clone git@github.com:colepeters/dotfiles.git ~/.dotfiles

# Switch to the new directory
cd ~/.dotfiles

# Initialise and update Zgen
git submodule init && git submodule update

# Install RCM
brew tap thoughtbot/formulae
brew install rcm

# Copy the RCM config file to your ~ directory first
rcup -v rcrc

# Generate symlinked dotfiles in your ~ directory
rcup -v
```

### Additional packages
Some aliases and configurations depend on these packages to work:

```shell
# Tig, a Git CLI wrapper:
brew install tig

# Exa, a nicer `ls`
brew install exa

# diff-so-fancy, for better git diffs:
npm i -g diff-so-fancy

# HTTPie, a nice cURL replacement:
brew install httpie
```

### 🎉 Ta-da
You should now be able to open a new shell session and have everything be not horrible and hopefully cooler and ready to go.

## Credits
Managed with [rcm by Thoughtbot](https://github.com/thoughtbot/rcm), which is an awesome, lightweight tool for keeping dotfiles synced and organised.

A ton of my Neovim setup was sourced from [LunarVim](https://github.com/LunarVim), via [an excellent YouTue playlist](https://www.youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ).

Some Zsh and Git configurations have been borrowed from the [YADR dotfiles](https://github.com/skwp/dotfiles) repository.

