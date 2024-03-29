#!/bin/sh
#
# Homebrew
#

# Check for Homebrew
if test ! $(which brew) ; then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin" ; then
   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux" ; then
   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

else
  echo "  Homebrew is already installed."

fi

echo "  Brewfile"
if [[ -h ~/.Brewfile ]] ; then
  unlink ~/.Brewfile
fi
ln -s ~/dotfiles/homebrew/.Brewfile ~/.Brewfile

brew bundle --global

exit 0
