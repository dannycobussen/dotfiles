return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-ui-select.nvim" },
  },
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<Esc>"] = actions.close,
          },
        },
        preview = {
          filesize_limit = 0.2, -- MB
        },
        file_ignore_patterns = {
          "node_modules",
          "%.svg",
        },
      },
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

    vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Open project files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Open file grep files" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Open file buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Open file help tags" })

    -- Slightly advanced example of overriding default behavior and theme
    vim.keymap.set("n", "<leader>/", function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
      builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        winblend = 10,
        previewer = false,
      }))
    end, { desc = "[/] Fuzzily search in current buffer" })
  end,
}
