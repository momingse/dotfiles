local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Plugin management
  use 'wbthomason/packer.nvim'

  -- Theme
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim'   -- Statusline
  use 'onsails/lspkind-nvim'        -- vscode-like pictograms
  use 'nvim-tree/nvim-web-devicons' -- icon
  use 'norcalli/nvim-colorizer.lua' -- color

  -- Lsp
  use 'hrsh7th/cmp-buffer'    -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'  -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'      -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'L3MON4D3/LuaSnip'
  use 'glepnir/lspsaga.nvim'  -- LSP UIs
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'


  -- Prettier
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Autopair
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- Fuzz Finder
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope-media-files.nvim' -- preview image

  -- Bufferline
  use 'akinsho/nvim-bufferline.lua'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Comment
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
end)
