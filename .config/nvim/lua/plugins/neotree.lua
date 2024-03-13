return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = true,
    follow_current_file = {
      enabled = true,
    },
    hijack_netrw_behavior = "open_default",
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)

    vim.keymap.set("n", "<C-b>", ":Neotree filesystem toggle reveal left<CR>", {})
    vim.keymap.set("n", "<A-b>", ":Neotree buffers toggle reveal left<CR>", {})
  end,
}
