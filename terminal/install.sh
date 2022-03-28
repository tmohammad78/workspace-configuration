#!/bin/sh
sudo apt-get install guake -y

sudo apt update
sudo apt upgrade
sudo apt install zsh
sudo apt install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ -e ~/.zshrc ]
then
    echo "The Zshrc file is exist ..."
    cp zshrc ~./zshrc
else
    echo "Zshrc file not exist, please check this"
fi
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
