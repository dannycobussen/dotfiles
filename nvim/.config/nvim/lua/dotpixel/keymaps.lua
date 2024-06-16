local set = vim.keymap.set

-- Window switching
set("n", "<C-h>", "<C-w><C-h>", { desc = "Go to left window" })
set("n", "<C-j>", "<C-w><C-j>", { desc = "Go to lower window" })
set("n", "<C-k>", "<C-w><C-k>", { desc = "Go to upper window" })
set("n", "<C-l>", "<C-w><C-l>", { desc = "Go to right window" })

-- 
