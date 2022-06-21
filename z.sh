#! /bin/bash

# todo - This script will install zsh and oh-my-zsh

# * updating the sources
echo $(sudo pacman -Syy)

# * installing zsh
echo $(sudo pacman -S zsh)

# * installing oh-my-zsh and it's autosuggestions and syntax highlighting plugin
echo $(sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)")
echo $(git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions)
echo $(git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting)

# * installing spaceship-prompt theme
echo $(git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1)
echo $(ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme")

echo " "
echo 'Set ZSH_THEME="spaceship" in your .zshrc.'
