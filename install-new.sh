GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

function install {
	printf "${GREEN}install.sh => ${NC}${BLUE}$1${NC}${GREEN} installing${NC}\n";
	return 0; 
}

function needed {
	if ! command -v $1 >/dev/null 2>&1 || [ ! -z $3 ]
	then
		install "$2"
		return 0;
	else
		printf "${GREEN}install.sh => ${NC}${BLUE}$2${NC}${GREEN} already installed${NC}\n";
		return 1;
	fi;
	return 1;adsf+"*"
}

function success {
	printf "${GREEN}install.sh => ${NC}${BLUE}$1${NC}${GREEN} installed${NC}\n";
}

## brew
needed brew Homebrew \
	&& ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null \
	&& success Homebrew

## code via brew
needed code "Visual Studio Code" \
	&& brew cask install visual-studio-code \
	&& success "Visual Studio Code"

# zsh
needed zsh Zsh force \
	&& brew install zsh \
	&& success Zsh

# ohmyzsh
install "oh-my-zsh" \
	&& sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
	&& success "oh-my-zsh"

# zsh-syntax-highlighting
install "zsh-syntax-highlighting" \
	&& brew install zsh-syntax-highlighting \
	&& success "zsh-syntax-highlighting"

needed nvm "Node Version Manager" \
	&& (curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash) \
	&& success "Node Version Manager"
	
