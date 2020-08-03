#! /bin/zsh
LG='\033[1;32m' #Light Green
NC='\033[0m' #No Color

# Ask for sudo upfront
sudo -v

echo "${LG}Updating Brew Brew${NC}"
echo "brew update\n"
brew update 2> /dev/null
echo "brew upgrade\n"
brew upgrade 2> /dev/null
echo "brew cleanup -s\n"
brew cleanup -s 2> /dev/null
echo "brew cask upgrade\n"
brew cask upgrade 2> /dev/null
echo "brew doctor\n"
brew doctor 2> /dev/null
echo "brew missing\n"
brew missing 2> /dev/null

# mac store
echo "\n${LG}Updating App Store Applications${NC}"
mas outdated 2> /dev/null
sudo mas upgrade 2> /dev/null

# node update
echo "\n${LG}Updating npm PkgM${NC}"
npm install -g npm

# Full Software Update
echo ""
read -p "Should I check for a software update? " ans
if [[ $ans =~ ^[Yy]$ ]]; then
	echo "\n${LG}Updating Mac OS${NC}"
	softwareupdate -i -a
else
	echo "No software update will be checked at this time."
fi
