local set = vim.keymap.set

require("undotree").setup()

set("n", "<leader>u", require("undotree").toggle, { noremap = true, silent = true })
