export ZSH="$HOME/.oh-my-zsh"
export PATH="/usr/local/opt/openssl/bin:$PATH"

fpath=("$HOME/.zfunctions" $fpath)

ZSH_THEME=""

plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

SCRIPTPATH="$(dirname $(readlink $( pwd -P )/.zshrc))"
source $SCRIPTPATH/zsh/brew
source $SCRIPTPATH/zsh/node
source $SCRIPTPATH/zsh/shortcuts

PURE_PROMPT_SYMBOL=λ
PURE_PROMPT_NODE=⬢
autoload -U promptinit; promptinit
prompt pure

source /usr/local/Cellar/zsh-syntax-highlighting/0.6.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh