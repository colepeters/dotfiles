TCP Dotfiles
============

Dead-simple dotfiles optimised for Vim, Git, and ZSH.

**This is very much a work in progress. I’m not yet in a position to provide support if you choose to make use of this repo.**

## Overview
The concept behind these dotfiles is to provide a solid, lightweight setup for use with Vim, Git, and ZSH. It attempts to keep external dependencies to a minimum and plugins within a sensible limit, while providing a pleasing aesthetic and uncomplicated implementation.

Having said that, these dotfiles are inherently opinionated, given that they are tailored towards my own personal preferences, workflows, and choices in software. This is not meant to be a “one size fits all” dotfiles repo — if you like what you see, please feel free to use it, fork it or submit a pull request; if you don’t, there are tons of other dotfile repos out there that might interest you.

### Credits
A sizeable portion of these dotfiles are adapted from the well-known [YADR dotfiles](https://github.com/skwp/dotfiles) repository. I have attempted to make mention of all of these instances within the code to give credit where it is due.
The dotfiles are managed with [rcm by Thoughtbot](https://github.com/thoughtbot/rcm), which is an awesome, lightweight tool for keeping dotfiles synced and organised.

## What’s included
Customisations for Vim, Git, and ZSH.

### Vim
The `vimrc` file starts with a great selection of sane defaults, most of which have been borrowed from [YADR](https://github.com/skwp/dotfiles). Everything, including my own customisations, are heavily commented; instead of listing everything out here, you’ll probably find it easier to [just read the file itself](./vimrc).

*NB:* Many of the visual customisations are tailored for use with the [Solarized](http://ethanschoonover.com/solarized) colour scheme, the dark version in particular.

Probably one other important thing to note is the redefining of the `LEADER` key as `,` (another YADR takeaway that I really love).

### Vim plugins
Plugins are managed with [Vundle](https://github.com/gmarik/Vundle.vim); plugin lists are stored in topical `.vundle` files, another technique borrowed from YADR to keep things clearly separated and easily findable. The following is an overview of the most notable plugins:

Appearance-related plugins:
- [Solarized colour scheme](https://github.com/altercation/vim-colors-solarized), one of the best ever made
- [My fork of the Lightline status line](https://github.com/colepeters/lightline.vim) — super lightweight and ultra customisable; my fork adds some visual customisations
- [Showmarks](https://github.com/xsunsmile/showmarks) for visual representation of location marks
- [Vim Indent Guides](https://github.com/nathanaelkane/vim-indent-guides), because it’s better than putting a ruler on your screen

Git-related plugins:
- [Fugitive](tpope/vim-fugitive) because you really just can’t not use this
- [Tim Pope’s vim-git](https://github.com/tpope/vim-git) for git syntax, filetype and indent settings

Language-related plugins:
- A bunch of syntax and filetype settings for JavaScript, Markdown, HTML, HAML, and more; [view all of them here](https://github.com/colepeters/dotfiles/blob/master/vim/languages.vundle)

“Project”-related plugins:
- [CTRL-P](kien/ctrlp.vim) fuzzy file finder

Search-related plugins:
- [Vim Sneak](https://github.com/justinmk/vim-sneak) acts like `f` but with two characters instead of one
- [Ag/The Silver Surfer](https://github.com/rking/ag.vim) because duh
- [IndexedSearch](https://github.com/vim-scripts/IndexedSearch) shows “Nth match out of N” at every search
- [Visual Star Search](https://github.com/nelstrom/vim-visual-star-search) — start a `*` or `#` search from a visual block
- [Greplace](https://github.com/skwp/greplace.vim) for find-and-replace across files
- [EasyMotion](https://github.com/Lokaltog/vim-easymotion) — super speedy Vim motions

Plugins for various Vim improvements:
- [delimitMate](https://github.com/Raimondi/delimitMate) for automatic closing of parentheses, quotes, etc
- [Neocomplete](https://github.com/Shougo/neocomplete.git) for super quick and easy autocomplete
- [Change Inside Surroundings](https://github.com/briandoll/change-inside-surroundings.vim) to change contents of the innermost surrounding (e.g. `cit` to “change in tag”)
- [Matchit](https://github.com/vim-scripts/matchit.zip) configures `%` to match more than single characters
- [Tim Pope’s repeat.vim](https://github.com/tpope/vim-repeat) remaps `.` so that plugins can tap into it
- [Surround](https://github.com/tpope/vim-surround) to surround a word or selection with something (like a tag, quotes, etc.)

## ZSH and Git
I use [Antigen](https://github.com/zsh-users/antigen) to manage my ZSH plugins, because it is awesome. Antigen is sourced and applied (and relevant plugins are called) all from the .zshrc file. Antigen is installed as a submodule of this repo.
The prompt utilised is my fork of [Pure](https://github.com/colepeters/pure) which changes only the symbol used to indicated a dirty git branch, and the colour used to indicate current branch name.
Also in use are a huge number of super convenient aliases tailored primarily towards Git — [take a look at them here](https://github.com/colepeters/dotfiles/blob/master/aliases.zsh).

## Basic install (OS X)
Oh my god these instructions so need to be tested and improved:

```shell
# Clone the repo to into a ".dotfiles" directory in your user directory
git clone git@github.com:colepeters/dotfiles.git ~/.dotfiles

# Switch to the new directory
cd ~/.dotfiles

# Initialise and update Antigen submodule
git submodule init && git submodule update

# Install RCM if it’s not already — you have Homebrew, right?
brew tap thoughtbot/formulae
brew install rcm

# Generate symlinked dotfiles in your ~ directory
rcup -v
```

You should now be able to open a new shell session and have everything be not horrible and hopefully cooler and ready to go.

Additional things of note:
- any private info (e.g. GitHub tokens, etc) should be stored in a `~/.secrets` file, which is sourced automatically if it exists
- any private aliases (e.g. server ssh logins, etc) should be stored in a `~/.aliases.user.zsh`, which is also sourced automatically if it exists


## TODO
- Review dependencies
- Better setup instructions
- Install script
- COME ON TARS
