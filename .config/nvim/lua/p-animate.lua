local filetypes = { "alpha" } -- List of file types

local function DisableMinianimate()
  for _, ft in ipairs(filetypes) do
    if vim.bo.filetype == ft then
      vim.b.minianimate_disable = true
      break
    end
  end
end

vim.api.nvim_create_autocmd({ "BufNew", "VimEnter" }, {
  callback = function()
    DisableMinianimate()
  end,
})

require("mini.animate").setup({
  scroll = {
    enable = false,
  },
})
