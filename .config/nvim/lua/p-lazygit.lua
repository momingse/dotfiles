local keymap = vim.keymap

keymap.set(
  "n",
  "<leader>g",
  "<cmd>LazyGit<cr>",
  { noremap = true, silent = true }
)
