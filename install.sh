

for file in bash_profile gitconfig zshrc
do
    rm ~/.$file
    ln -s $PWD/$file ~/.$file
done

rm $HOME/.zfunctions/prompt_pure_setup
rm $HOME/.zfunctions/async
ln -s "$PWD/pure/pure.zsh" "$HOME/.zfunctions/prompt_pure_setup"
ln -s "$PWD/pure/async.zsh" "$HOME/.zfunctions/async"