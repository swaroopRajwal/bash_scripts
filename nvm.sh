#! /bin/bash

#todo - to install nvm and set node to latest version also installing yarn

echo $(sudo pacman -S nvm)
echo $(nvm install --lts)
echo $(nvm use --lts)
echo $(sudo npm install --global yarn)

echo $(echo "[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM" >> ~/.zshrc )
