return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Open project files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Open file grep files" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Open file buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Open file help tags" })
  end
}

