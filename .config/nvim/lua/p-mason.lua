require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

require("mason-tool-installer").setup({
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "prettierd",
    "eslint",
    "tailwindcss",
    "cssls",
    "pyright",
    "blue",
    "prismals",
    "dart-debug-adapter",
    "gopls",
  },
})
