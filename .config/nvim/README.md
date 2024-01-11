# My Neovim Setup

## Packages

| Package Name                              | Description                             |
| ----------------------------------------- | --------------------------------------- |
| sahinnhe/everforest                       | color scheme                            |
| williamboman/mason.nvim                   | package manager                         |
| williamboman/mason-lspconfig.nvim         | lsp config for mason                    |
| neovim/nvim-lspconfig                     | lsp config                              |
| WhoIsSethDaniel/mason-tool-installer.nvim | tool installer for mason                |
| stevearc/conform.nvim                     | auto format                             |
| nvim-tree/nvim-tree.lua                   | file explorer                           |
| nvim-tree/nvim-web-devicons               | file explorer icons                     |
| windwp/nvim-autopairs                     | auto pairs                              |
| nvim-telescope/telescope.nvim             | fuzzy finder                            |
| mg979/vim-visual-multi                    | multiple cursors                        |
| MattesGroeger/vim-bookmarks               | bookmarks                               |
| tom-anders/telescope-vim-bookmarks.nvim   | bookmarks for telescope                 |
| typescript-tools.nvim                     | typescript tools, replacement of ts lsp |
| mfussenegger/nvim-lint                    | linting                                 |
| hrsh7th/nvim-cmp                          | completion                              |
| nvim-treesitter/nvim-treesitter           | syntax highlight                        |
| akinsho/toggleterm.nvim                   | terminal                                |
| echasnovski/mini.nvim                     | lua indenpendent library                |
| gcmt/wildfire.vim                         | expand selection                        |
| numToStr/Comment.nvim                     | comment                                 |
| hinell/duplicate.nvim                     | duplicate line                          |
| mrjones2014/legendary.nvim                | key mapping                             |
| folke/flash.nvim                          | fast navigation                         |
| lewis6991/gitsigns.nvim                   | git signs                               |

## Key Mapping

### **Common Key Mapping**

- dw - now delete the word at front for using `e` to move

        a word| => a worddw| => a |

- <leader>q - quit the current buffer
- <leader>w - save the current buffer
- <leader>x - save and quit the current buffer

- jk - same as `<Esc>` in insert mode

### **nvim-tree**

- <c-t> - toggle nvim-tree
- <c-v> - open file in horizontal split

### **telescope**

- <leader>f - find files
- <leader>g - find word in current directory
- <leader>b - find buffers
- <leader>p - find project

### **vim-visual-multi**

- <c-j> - add cursor down
- <c-k> - add cursor up
- <c-n> - add cursor to next matched word

### **lsp**

- <leader>k - hover doc
- gd - go to definition
- gr - list references in telescope
- ]d - go to next diagnostic

### **vim-bookmarks**

- mm - add bookmark
- ma - open global bookmark list in telescope
- mc - open local bookmark list in telescope
- mx - clear all bookmarks

### **typescript-tools**

- <leader>m - sort and remove unused imports
- <leader>a - add import for all statements that lack import

### **_treesitter_**

- za - toggle fold or unfold
- zA - toggle fold all or unfold all

### **\*toggleterm**

- <c-\\> - toggle terminal

### **_mini_**

- sa - add surround
- sd - delete surround
- sr - replace surround

### **_Comment_**

- gcc - toggle comment

### **_duplicate_**

- <C-S-A-Up> - duplicate line up
- <C-S-A-Down> - duplicate line down

### **_flash_**

- s - fast navigation
- S - fast navigation with treesitter

