local actions = require("telescope.actions")

-- Config for telescope
local config = {
  mappings = {
    i = {
      ["<Esc>"] = actions.close,
    },
  },
  preview = {
    filesize_limit = 0.2, -- MBs
  },
  file_ignore_patterns = {
    "node_modules",
  },
}

require("telescope").setup({
  -- Theme can be 'ivy', 'dropdown' or 'cursor'
  defaults = require("telescope.themes").get_ivy(config),
  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
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
set("n", "<leader>fh", builtin.help_tags, { desc = "Open help tags window" })
set("n", "<leader>fk", builtin.keymaps, { desc = "Open current keymap?" })

set("n", "<leader>/", function()
  builtin.current_buffer_fuzzy_find(require("telescope.themes").get_ivy({ winblend = 5, previewer = false }))
end, { desc = "Fuzzy search in current buffer" })
