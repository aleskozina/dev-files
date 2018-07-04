#!bin/sh

for file in bash_profile gitconfig
do
    rm ~/.$file
    ln -s $PWD/$file ~/.$file
done