vim.api.nvim_set_keymap(
  "n",
  "<leader>cf",
  "<cmd>lua require('conform').format()<CR>",
  { noremap = true, silent = true }
)

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    css = { "prettierd" },
    html = { "prettierd" },
    yaml = { "prettierd" },
    markdown = { "prettierd" },
    graphql = { "prettierd" },
    json = { "prettierd" },
    python = { "blue" },
    dart = { "dart_format" },
    go = { "gofmt" },
  },
  -- format_on_save = {
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
})
