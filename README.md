My Dotfiles
============

Configurations and optimisations primarily for Zsh, Neovim, and a little bit of Atom.

Please be aware that _these configurations are designed for my own personal use_. You are of course welcome to make use of whatever you find here, but do understand that I take no responsibility for anything that backfires on your machine. (There’s really nothing scary in here. Just a word of caution.)

## Overview
The concept behind these dotfiles is to provide a solid, lightweight setup for the tools I use most in my development work: [Neovim](https://neovim.io/), [Zsh](http://www.zsh.org/), [Git](https://git-scm.com/), and, occassionally, [Atom](https://atom.io/). External dependencies and plugins are kept to a minimum, while providing a pleasing aesthetic and uncomplicated implementation.

Having said that, these dotfiles are inherently opinionated. This is not meant to be a “one size fits all” dotfiles repo — if you like what you see, please feel free to use it, fork it or [open an issue](https://github.com/colepeters/dotfiles/issues/new) if you have any questions or comments.

### Credits
The dotfiles are managed with [rcm by Thoughtbot](https://github.com/thoughtbot/rcm), which is an awesome, lightweight tool for keeping dotfiles synced and organised.

Some Zsh and Git configurations have been borrowed from the [YADR dotfiles](https://github.com/skwp/dotfiles) repository. I have attempted to make mention of all of these instances within the code to give credit where it is due.

## What’s included

### Neovim
Neovim is like Vim, but (in my humble opinion) better. I particular love its asynchronous plugin architecture, how fast its development community is growing, and how well maintenance and support is handled. I keep my configuration pretty lean, but in a nutshell these dotfiles contain:

- A small manifest of plugins (which are installed and updated via [vim-plug](https://github.com/junegunn/vim-plug), including (in part):
  - [Neomake](https://github.com/benekastah/neomake), for asynchronous task-running (I use it for my linting setup)
  - [vim-hybrid-material](https://github.com/kristijanhusak/vim-hybrid-material), my favourite colour scheme (looks great using iTerm2’s recent 24-bit colour mode)
  - [CtrlP](https://github.com/ctrlpvim/ctrlp.vim), the best fuzzy file finder
  - [vim-grepper](https://github.com/mhinz/vim-grepper), for project-wide search using your choice of grep tools
  - [delimitMate](https://github.com/Raimondi/delimitMate), for auto-closing of parentheses, braces, quotes, etc
  - Some other niceties, syntaxes, etc
- A small selections of per-plugin settings files, sourced automatically on startup
- Light configurations for Neovim’s appearance, indentation settings, and setting in general (in particular, experienced Vim users should note that `Leader` is mapped to `,`)

### Zsh and Git
I use [Antigen](https://github.com/zsh-users/antigen) to manage my ZSH plugins, because it is awesome. Antigen is sourced and applied (and relevant plugins are called) all from the .zshrc file. Antigen is installed as a submodule of this repo.

The command line prompt utilised is my fork of [Pure](https://github.com/colepeters/pure). My fork changes only the symbol used to indicated a dirty git branch, and the colour used to indicate current branch name.

The `gitconfig` included is primarily borrowed from YADR, and includes some sensible aliases and defaults for Git’s CLI. **User-specific Git configurations should be stored in ~/.gitconfig.user**.

Also provided are a small number of convenient Zsh aliases — [take a look at them here](https://github.com/colepeters/dotfiles/blob/master/aliases.zsh).

Please note that:
- any private info (e.g. API tokens, etc) should be stored in a `~/.secrets` file, which is sourced automatically if it exists
- any private aliases (e.g. server ssh logins, etc) should be stored in a `~/.aliases.user.zsh`, which is also sourced automatically if it exists

### Atom
Atom?

## Usage (OS X)
These instructions have been tested on my own machine (OS X 10.11, using the latest version of [iTerm2](https://www.iterm2.com/)). They presume that you do **not** already have a `.dotfiles` directory in your user (`~`) directory.

### Prerequisites
- [Homebrew](http://brew.sh/)
- [Node and npm](https://nodejs.org/en/)
- [Neovim](https://neovim.io)

### Install

```shell
# Install Zsh
brew install zsh

# Switch into Zsh — don’t worry if it looks like crap for the moment
chsh -s zsh

# Clone the repo to into a ".dotfiles" directory in your user directory
git clone git@github.com:colepeters/dotfiles.git ~/.dotfiles

# Switch to the new directory
cd ~/.dotfiles

# Initialise and update Antigen submodule
git submodule init && git submodule update

# Install RCM
brew tap thoughtbot/formulae
brew install rcm

# Copy the RCM config file to your ~ directory first
rcup -v rcrc

# Generate symlinked dotfiles in your ~ directory
rcup -v
```

### Add-ons
Some aliases and configurations depend on these little packages to work:

```shell
# diff-so-fancy, for better git diffs:
npm install -g diff-so-fancy

# Tig, a Git CLI wrapper:
brew install tig

# HTTPie, a nice cURL replacement:
brew install httpie

# tidy-html5, which I use for linting HTML files in Neovim
brew install tidy-html5
```

### Optional add-ons
These CLI applications make my life easier:

```shell
# Standard, a great JS standard that I use when not writing to an eslintrc spec
# (Also Snazzy, which gives a prettier output when running Standard on the CLI)
npm i -g standard snazzy

# tldr, aka quick and useful documentation for CLI commands
npm i -g tldr
```

### 🎉 Ta-da
You should now be able to open a new shell session and have everything be not horrible and hopefully cooler and ready to go.

Worh repeating:
- any private info (e.g. GitHub tokens, etc) should be stored in a `~/.secrets` file, which is sourced automatically if it exists
- any private aliases (e.g. server ssh logins, etc) should be stored in a `~/.aliases.user.zsh`, which is also sourced automatically if it exists
