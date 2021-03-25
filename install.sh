#!/usr/bin/env bash

# Aliases
source $CWD/aliases.sh

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
	echo "Installing Homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Add taps
brew tap sambadevi/powerlevel9k

# Upgrade any already-installed formulae
brew upgrade

echo "Installing Brew apps..."
apps=(
	git
	kubernetes-cli
	make
	n
	node
	wget
	zsh
    bat
    fzf
    htop
    k9s
    kubectx
    redis
    terraform
    tldr
    vault
    watch
	romkatv/powerlevel10k/powerlevel10k
)

brew install "${apps[@]}"

# Install Caskroom
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

echo "Installing Brew Casks..."
apps=(
	1password
	docker
	google-cloud-sdk
	keybase
	slack
	spotify
	visual-studio-code
    postman
    google-chrome
)

brew cask install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup


cd "$(dirname "${BASH_SOURCE}")";

git init
git remote add origin git@github.com:malyborky/dotfiles.git

# Symlink dotfiles
git pull origin master

ln -sv $CWD/.zshrc ~/.zshrc
ln -sv $CWD/.gitconfig ~/.gitconfig
ln -sv $CWD/.p10k.zsh ~/.p10k.zsh

done