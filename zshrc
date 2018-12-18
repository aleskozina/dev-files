# export ZSH="$HOME/.oh-my-zsh"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-11.0.1.jdk/Contents/Home"
export PATH="/usr/local/opt/openssl/bin:$PATH"

export LC_ALL=C

fpath=("$HOME/.zfunctions" $fpath)

ZSH_THEME=""

# plugins=(
#  git
#  zsh-syntax-highlighting
# )

# source $ZSH/oh-my-zsh.sh

SCRIPTPATH="$(dirname $(readlink $( pwd -P )/.zshrc))"
source $SCRIPTPATH/zsh/brew
source $SCRIPTPATH/zsh/node
source $SCRIPTPATH/zsh/shortcuts

# autoload -U promptinit; promptinit
# prompt spaceship
# source /usr/local/Cellar/zsh-syntax-highlighting/0.6.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

