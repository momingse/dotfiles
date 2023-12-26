# My dotfile Setup

Using lua and referenced [craftzdog's dotfiles](https://github.com/craftzdog/dotfiles-public)

## Tools
- [neovim](https://neovim.io/)
- [oh-my-zsh](https://ohmyz.sh/)
- [nvm](https://github.com/nvm-sh/nvm)
- [pyenv](https://github.com/pyenv/pyenv)
- [jenv](https://github.com/jenv/jenv)
- [conda](https://conda.io/projects/conda/en/latest/user-guide/getting-started.html)
- [delta](https://github.com/dandavison/delta)

## Install

Install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install nvim and nerd-font
```bash
# for Mac
# install version manager for java python nodejs
brew install jenv pyenv nvm
brew install --cask anaconda
# the existing setting for jenv pyenv nvm conda can be found online in official website

# install nvim
brew install nvim 
# install fonts
brew tap homebrew/cask-fonts
brew install font-jetbrains-mono-nerd-font

# install delta for diff
brew install git-delta
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