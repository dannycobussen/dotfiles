return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-ui-select.nvim" },
  },
  config = function()
    require("telescope").setup({
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
    -- vim.keymap.set("n", "<leader>/", function()
    -- 	-- You can pass additional configuration to telescope to change theme, layout, etc.
    -- 	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    -- 		winblend = 10,
    -- 		previewer = false,
    -- 	}))
    -- end, { desc = "[/] Fuzzily search in current buffer" })
  end,
}
