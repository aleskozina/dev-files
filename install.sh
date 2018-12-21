for file in "gitconfig" "gitignore" "zshrc" "hyper.js"
do
    rm ~/.$file
    ln -s $PWD/$file ~/.$file
done

rm $HOME/.zfunctions/prompt_pure_setup
rm $HOME/.zfunctions/async
mkdir $HOME/.zfunctions
ln -s "$PWD/pure/pure.zsh" "$HOME/.zfunctions/prompt_pure_setup"
ln -s "$PWD/pure/async.zsh" "$HOME/.zfunctions/async"