#!/bin/bash
#
# This script creates symlinks from the home directory to the dotfiles in ~/dotfiles
#

# Variables
DIR=~/.dotfiles
OLD_DIR=~/dotfiles_old
FILES="bash/bashrc bash/bash_profile"  # Not used at the moment

# Create backup dir
echo -n "Creating $OLD_DIR for backup of any existing dotfiles ..."
mkdir -p $OLD_DIR
echo "done"

# Change to the dotfiles dir
echo -n "Changing to the $DIR directory..."
cd $DIR
echo "done"

# Move existing files to backup dir, then create symlinks
echo "Moving dotfiles to $OLD_DIR"
mv ~/.bashrc $OLD_DIR/
mv ~/.bash_profile $OLD_DIR/

echo "Creating symlinks"
ln -s $DIR/bash/bashrc ~/.bashrc
ln -s $DIR/bash/bash_profile ~/.bash_profile
