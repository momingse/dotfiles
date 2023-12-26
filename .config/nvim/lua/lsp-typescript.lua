local keymap = vim.keymap
keymap.set("n", "<leader>m", "<cmd>TSToolsOrganizeImports<cr>")
keymap.set("n", "<leader>a", "<cmd>TSToolsAddMissingImports<cr>")

-- For init the tsserver for typescript-tools
-- local mason_registry = require("mason-registry")
-- local tsserver_path =
--   mason_registry.get_package("typescript-language-server"):get_install_path()
-- require("typescript-tools").setup({
--   settings = {
--     tsserver_path = tsserver_path .. "/node_modules/typescript/lib/tsserver.js",
--   },
-- })

local api = require("typescript-tools.api")
require("typescript-tools").setup({
  handlers = {
    ["textDocument/publishDiagnostics"] = api.filter_diagnostics({ 6133 }),
  },
})
