export PATH="/usr/local/opt/openssl/bin:$PATH"
fpath=("$HOME/.zfunctions" $fpath)

#export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home'
#export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk-12'
export JAVA_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-12.jdk/Contents/Home'

#SCRIPTPATH="$(dirname $(readlink $( pwd -P )/.zshrc))"
source ~/.aleskozina/dev-files/zsh/brew
source ~/.aleskozina/dev-files/zsh/node
source ~/.aleskozina/dev-files/zsh/shortcuts

# ZSH_THEME="spaceship"

autoload -U promptinit; promptinit
prompt spaceship

SPACESHIP_PROMPT_ORDER=(
  # time          # Time stamps section
  # user          # Username section
  dir           # Current directory section
  # host          # Hostname section
  git           # Git section (git_branch + git_status)
  # node          # Node.js section
  # hg            # Mercurial section (hg_branch  + hg_status)
  #  package       # Package version
  
  # ruby          # Ruby section
  # elixir        # Elixir section
  # xcode         # Xcode section
  # swift         # Swift section
  # golang        # Go section
  # php           # PHP section
  # rust          # Rust section
  # haskell       # Haskell Stack section
  # julia         # Julia section
  # docker        # Docker section
  # aws           # Amazon Web Services section
  # venv          # virtualenv section
  # conda         # conda virtualenv section
  # pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section
  # kubecontext   # Kubectl context section
  # terraform     # Terraform workspace section
  # exec_time     # Execution time
  line_sep      # Line break
  # battery       # Battery level and status
  # vi_mode       # Vi-mode indicator
  # jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  
)

