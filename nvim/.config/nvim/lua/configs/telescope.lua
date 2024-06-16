local actions = require("telescope.actions")
require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<Esc>"] = actions.close,
      },
    },
    preview = {
      filesize_limit = 0.2, -- MBs
    },
    theme = "ivy"
  },
  pickers = {
    find_files = {
      theme = "ivy"
    },
  },
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown(),
    },
  },
})

pcall(require("telescope").load_extension, "ui-select")

local builtin = require("telescope.builtin")
local set = vim.keymap.set

set("n", "<C-p>", builtin.find_files, { desc = "Open current project files" })
set("n", "<leader>fg", builtin.live_grep, { desc = "Open files grep" })
set("n", "<leader>fb", builtin.buffers, { desc = "Open current buffers" })
set("n", "<leader>fh", builtin.help_tags, { desc = "Open current buffers" })
set("n", "<leader>fk", builtin.keymaps, { desc = "Open current keymap?" })

