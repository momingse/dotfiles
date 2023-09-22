# My dotfile Setup

Using lua and referenced [craftzdog's dotfiles](https://github.com/craftzdog/dotfiles-public)

## Tools
- [neovim](https://neovim.io/)
- [oh-my-zsh](https://ohmyz.sh/)
- [nvm](https://github.com/nvm-sh/nvm)
- [pyenv](https://github.com/pyenv/pyenv)
- [jenv](https://github.com/jenv/jenv)

## Install

Install [oh-my-zsh](https://ohmyz.sh/)

Install nvim and nerd-font
```bash
# for Mac
# install version manager for java python nodejs
brew install jenv pyenv nvm
# the existing setting for jenv pyenv nvm can be found online in official website

# install nvim
brew install nvim 
# install ripgrep for telescope
brew install ripgrep
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
