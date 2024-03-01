require("Comment").setup({
  pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
  ignore = function()
    local mode = vim.api.nvim_get_mode()["mode"]
    if mode == "n" then
      return "^$"
    end
    return nil
  end,
})
require("ts_context_commentstring").setup({ enable_autocmd = false })
