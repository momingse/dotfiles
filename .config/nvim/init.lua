local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-treesitter/nvim-treesitter",
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },
      { "saadparwaiz1/cmp_luasnip" },
      { "L3MON4D3/LuaSnip" },
    },
  },
  "sainnhe/everforest",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  {
    "stevearc/conform.nvim",
    lazy = true,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-project.nvim",
    },
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_maps = {
        ["Add Cursor Down"] = "<C-j>",
        ["Add Cursor Up"] = "<C-k>",
      }
    end,
  },
  "MattesGroeger/vim-bookmarks",
  "tom-anders/telescope-vim-bookmarks.nvim",
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
    lazy = true,
  },
  {
    "mfussenegger/nvim-lint",
    event = { "VeryLazy" },
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
  },
  "axelvc/template-string.nvim",
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  { "echasnovski/mini.nvim", version = "*" },
  "gcmt/wildfire.vim",
  {
    "numToStr/Comment.nvim",
    event = { "VeryLazy" },
  },
  "hinell/duplicate.nvim",
  {
    "mrjones2014/legendary.nvim",
    priority = 10000,
    lazy = false,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "x", "o" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      -- {
      --   "r",
      --   mode = "o",
      --   function()
      --     require("flash").remote()
      --   end,
      --   desc = "Remote Flash",
      -- },
      -- {
      --   "R",
      --   mode = { "o", "x" },
      --   function()
      --     require("flash").treesitter_search()
      --   end,
      --   desc = "Treesitter Search",
      -- },
      -- {
      --   "<c-s>",
      --   mode = { "c" },
      --   function()
      --     require("flash").toggle()
      --   end,
      --   desc = "Toggle Flash Search",
      -- },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({})
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },
  "lewis6991/gitsigns.nvim",
  {
    "kdheepak/lazygit.nvim",
    event = { "VeryLazy" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  { "echasnovski/mini.nvim", version = "*" },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup()
      -- refer to `configuration to change defaults`
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
  {
    "brooth/far.vim",
    lazy = true,
  },
  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("alpha").setup(require("alpha.themes.theta").config)
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    event = { "VeryLazy" },
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = true
  },
  "github/copilot.vim",
})

require("base")
require("keymap")
require("lsp-lua")
require("lsp-typescript")
require("lsp-tailwind")
require("lsp-css")
require("lsp-python")
require("lsp-prisma")
require("p-mason")
require("p-lsp")
require("p-conform")
require("p-tree")
require("p-telescope")
require("p-bookmark")
require("p-lint")
require("p-cmp")
require("p-treesitter")
require("p-term")
require("p-mini")
require("p-comment")
require("p-line")
require("p-lualine")
require("p-gitsigns")
require("p-lazygit")
require("p-animate")
require("p-peek")
require("p-color")
require("p-far")
require("color")
