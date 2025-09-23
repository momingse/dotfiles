-- Setup gopls (Go Language Server)
require("lspconfig").gopls.setup({})

-- Setup golangci-lint-langserver
local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

-- Check if config is already defined to prevent redefinition
if not configs.golangcilsp then
  configs.golangcilsp = {
    default_config = {
      cmd = { "golangci-lint-langserver" },
      root_dir = lspconfig.util.root_pattern(".git", "go.mod"),
      init_options = {
        command = {
          "golangci-lint",
          "run",
          "--output.json.path",
          "stdout",
          "--show-stats=false",
          "--issues-exit-code=1",
        },
      },
    },
  }
end

-- Use the correct server name: golangcilsp (matching what you defined)
lspconfig.golangcilsp.setup({
  filetypes = { "go", "gomod" },
})
