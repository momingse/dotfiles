local builtin = require("telescope.builtin")
local action = require("telescope.actions")
local actions_state = require("telescope.actions.state")
local keymap = vim.keymap
keymap.set("n", "<leader>f", builtin.find_files, {})
keymap.set("n", "<leader>g", builtin.live_grep, {})
keymap.set("n", "<leader>b", builtin.buffers, {})
keymap.set(
  "n",
  "<leader>p",
  '<cmd>lua require("telescope").extensions.project.project()<CR>',
  { noremap = true, silent = true }
)

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["esc"] = action.close,
      },
    },
    file_ignore_patterns = {
      ".git",
      "lazy-lock.json",
      "node_modules",
      "yarn.lock",
      "schema.gal",
    },
    dynamic_preview_title = true,
    path_display = { "smart" },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
  layout_config = {
    horizontal = {
      preview_cutoff = 100,
      preview_width = 0.5,
    },
  },
  extensions = {
    project = {
      base_dirs = {
        "~/Developments",
      },
      hidden_files = true, -- default: false
      theme = "dropdown",
      order_by = "asc",
      search_by = "title",
      sync_with_nvim_tree = false,
      on_project_selected = function(prompt_bufnr)
        -- open selected project in telescope
        local path = actions_state.get_selected_entry(prompt_bufnr).value
        builtin.find_files({
          search_dirs = { path },
        })
        -- change root directory to selected project
        -- project_actions.change_working_directory(prompt_bufnr, false)
      end,
    },
  },
})

require("telescope").load_extension("project")
