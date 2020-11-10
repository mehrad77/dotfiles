#!/bin/bash      
# This bash files is used to sync symbolic links from dotfiles dir

#  -s creates a symbolic link instead of a hard lin
#  -f continues with other symlinking when an error occurs (not needed here, but useful in loops)
#  -n avoids symlinking a symlink (same as -h for other versions of ln)

ln -sfn ~/dotfiles/.gitconfig ~/.gitconfig


git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh.d/themes/powerlevel10k
ln -sfn ~/dotfiles/.zshrc ~/.zshrc