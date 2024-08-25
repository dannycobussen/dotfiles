local set = vim.keymap.set

-- Window switching
set("n", "<C-h>", "<C-w><C-h>", { desc = "Go to left window" })
set("n", "<C-j>", "<C-w><C-j>", { desc = "Go to lower window" })
set("n", "<C-k>", "<C-w><C-k>", { desc = "Go to upper window" })
set("n", "<C-l>", "<C-w><C-l>", { desc = "Go to right window" })

-- Buffers
set("n", "<C-tab>", "<C-6>", { desc = "Switch to previous buffert" })

-- Lines
set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up in normal mode" })
set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down in normal mode" })

set("v", "<A-k>", ":m '>-2<CR>gv=gv", { desc = "Move line up in visual mode" })
set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down in visual mode" })

set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up in inupt mode" })
set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down in input mode" })

-- Indenting
set("v", ">", ">gv", { desc = "Indent and keep line in visual mode" })
set("v", "<", "<gv", { desc = "Indent and keep line in visual mode" })

-- Lazy
set("n", "<Leader>l", ":Lazy<CR>", { desc = "Open lazy window" })
set("n", "<Esc>", ":nohlsearch<CR>", { silent = true, desc = "Escape and remove highlighted search" })
set({ "i", "n" }, "<C-c>", "<Esc><Esc>", { desc = "Map ctrl+c to Esc", remap = true })

-- Diagnostic keymaps
set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
set("n", "<Leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
set("n", "<Leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
