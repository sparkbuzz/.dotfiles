# sparkbuzz/devenv

This is my .dotfiles setup, featuring Kitty terminal, Zsh and Neovim.

## Features

This .dotfiles setup hosts scripting to setup a clean Mac for development. The 
install script will perform the following steps:

- Installs Homebrew and Xcode Command Line Tools
- Installs some Homebrew packages
- Installs some Homebrew Cask packages
- Installs and configures the Kitty terminal:
    - Renames Kitty to Terminal
    - Gives Kitty a different application icon
- Uses Antibody to configure Zsh plugins
- Symlinks .dotfiles to the home folder using GNU Stow

An uninstallation script is also available, but mostly used for development and 
testing purposes.

## Installation

To install sparkbuzz/.dotfiles, run the following command:

```
curl -s https://raw.githubusercontent.com/sparkbuzz/.dotfiles/master/install | zsh
```

PS: _This install script will overwrite files like .zshrc in your home folder, 
take a look at the GNU Stow configuration, to learn about which files will get 
overwritten._
