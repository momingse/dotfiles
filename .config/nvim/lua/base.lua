local opt = vim.opt
opt.number = true
opt.relativenumber = true

opt.scrolloff = 5
opt.sidescrolloff = 5

opt.hlsearch = true
opt.incsearch = true

opt.mouse:append("a")

if vim.fn.has("macunix") then
  opt.clipboard:append({ "unnamedplus" })
elseif vim.fn.has("win32") then
  opt.clipboard:prepend({ "unnamed", "unnamedplus" })
else
  opt.clipboard = "unnamedplus"
end

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.ignorecase = true
opt.smartcase = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

opt.cursorline = true
opt.termguicolors = true

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 300,
    })
  end,
})
