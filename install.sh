#!/bin/bash
#
# This script creates symlinks from the home directory to the dotfiles in ~/dotfiles
#

# Variables
DOT_DIR=~/.dotfiles
OLD_DIR=~/dotfiles_old
FILES="bash/bashrc bash/bash_profile"  # Not used at the moment

# Create backup dir
echo -n "Creating $OLD_DIR for backup of any existing dotfiles ..."
mkdir -p $OLD_DIR
echo "done"

# Move existing files to backup dir, then create symlinks
echo "Moving dotfiles to $OLD_DIR"
mv ~/.bashrc $OLD_DIR/
mv ~/.bash_profile $OLD_DIR/
mv ~/.zshrc $OLD_DIR/

echo "Creating symlinks"
ln -s $DOT_DIR/bash/bashrc ~/.bashrc
ln -s $DOT_DIR/bash/bash_profile ~/.bash_profile
ln -s $DOT_DIR/zsh/zshrc ~/.zshrc
