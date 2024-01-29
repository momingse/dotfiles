local keymap = vim.keymap

require("lspsaga").setup({
  ui = {
    border = "rounded",
  },
  code_action_prompt = {
    enable = false,
  },
})
keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<cr>")
keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<cr>")
keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<cr>")

local builtin = require("telescope.builtin")

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<cr>", opts)
    vim.keymap.set("n", "<leader>k", "<cmd>Lspsaga hover_doc<cr>", opts)
    vim.keymap.set("n", "<space>r", "<cmd>Lspsaga rename<cr>", opts)
    -- vim.keymap.set(
    --   { "n", "v" },
    --   "<space>ca",
    --   "<cmd>Lspsaga cr>",
    --   opts
    -- )
    vim.keymap.set("n", "gr", builtin.lsp_references, opts)
  end,
})
