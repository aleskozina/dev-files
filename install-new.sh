GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

function install {
	printf "${GREEN}install.sh => ${NC}${BLUE}$1${NC}${GREEN} installing${NC}\n";
	return 0; 
}
function installed {
	printf "${GREEN}install.sh => ${NC}${BLUE}$1${NC}${GREEN} already installed${NC}\n";
	return 0;
} 

function success {
	printf "${GREEN}install.sh => ${NC}${BLUE}$1${NC}${GREEN} installed${NC}\n";
}

## brew
command -v brew >/dev/null 2>&1 \
	&& installed brew \
	|| (install brew && ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null \
	&& success brew)

## code via brew
brew cask ls --versions visual-studio-code >/dev/null \
	&& installed visual-studio-code \
	|| (install visual-studio-code && brew cask install visual-studio-code && success visual-studio-code)
	

# zsh
brew ls --versions zsh >/dev/null \
	&& installed zsh \
	|| (install zsh && brew install zsh && success zsh)

# ohmyzsh
[ -d ~/.oh-my-zsh/ ] \
	|| (install oh-my-zsh && h -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && success "oh-my-zsh") \
	&& installed oh-my-zsh

# zsh-syntax-highlighting
brew ls --versions zsh-syntax-highlighting >/dev/null \
	&& installed zsh-syntax-highlighting \
	|| (install zsh-syntax-highlighting && brew install zsh-syntax-highlighting && success "zsh-syntax-highlighting")

[ -d ~/.nvm/ ] \
	&& installed nvm \
	|| (install nvm && (curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash) && success nvm)

# zsh
brew ls --versions git >/dev/null \
	&& installed git \
	|| (install git && brew install git && success git)

# hyper.js
brew cask ls --versions hyper >/dev/null \
	&& installed hyper \
	|| (install hyper && brew cask install hyper && success hyper)
