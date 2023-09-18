local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({
  ui = {
    border = 'rounded',
  },
  symbol_in_winbar = {
    enable = false
  },
  lightbulb = {
    enable = false
  },
  outline = {
    layout = 'float'
  }
})

local diagnostic = require("lspsaga.diagnostic")
local opts = { noremap = true, silent = true }
-- usage: jump to next error / warning
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
-- usage: check type
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
-- usage: search key word in file (using :q to quit)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga finder<CR>', opts)
-- usage: go to it's definition (tips: use <C-S-o> to return)
vim.keymap.set('n', 'gt', '<Cmd>Lspsaga goto_type_definition<CR>', opts)
-- usage: open a window to peek it's definition (using :q to quit)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
-- usage: rename value
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
-- vim.keymap.set('n', 'gl', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
-- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
-- vim.keymap.set('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)

-- code action
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
