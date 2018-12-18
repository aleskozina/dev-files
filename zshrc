export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-11.0.1.jdk/Contents/Home"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LC_ALL=C
fpath=("$HOME/.zfunctions" $fpath)

SCRIPTPATH="$(dirname $(readlink $( pwd -P )/.zshrc))"
source $SCRIPTPATH/zsh/brew
source $SCRIPTPATH/zsh/node
source $SCRIPTPATH/zsh/shortcuts

# autoload -U promptinit; promptinit
# prompt spaceship


