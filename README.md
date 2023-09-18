# My Nvim Setup

Using lua and referenced [craftzdog's dotfiles](https://github.com/craftzdog/dotfiles-public)

## Install

Install [oh-my-zsh](https://ohmyz.sh/)

Install nvim and nerd-font
```bash
# for Mac
# install nvim
brew install nvim 
# install nerd-font
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

run `installer.sh` to link the file
```bash
sh installer.sh
```

Setting the font family of the terminal to nerd-font

run the following command in nvim to install package and lsp
```
:PackerInstall
:Mason
```

## Key Mapping

### **normal mode**

- dw - now delete the word at front for using `e` to move

        a word| => a worddw| => a |

### **insert mode**

- jk - same as `<Esc>`
