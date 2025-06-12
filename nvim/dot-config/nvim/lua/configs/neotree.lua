local opts = {
  popup_border_style = "rounded",
  window = {
    position = "left",
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      always_show_by_pattern = {
        ".env*",
      },
    },
    follow_current_file = {
      enabled = true,
    },
    hijack_netrw_behavior = "open_current",
  },
}

require("neo-tree").setup(opts)

local set = vim.keymap.set

set("n", "<C-b>", "<Cmd>Neotree filesystem toggle<CR>")
set("n", "<leader>gs", "<Cmd>Neotree git_status bottom<CR>")
