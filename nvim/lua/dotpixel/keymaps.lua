local function defaultOpts(extra)
  local opts = { noremap = true, silent = false }

  for k, v in ipairs(extra) do
    opts[k] = v
  end

  return opts
end

-- Window switching
vim.keymap.set("n", "<C-h>", "<C-w>h", defaultOpts({ desc = "Go to left window" }))
vim.keymap.set("n", "<C-l>", "<C-w>l", defaultOpts({ desc = "Go to right window" }))
vim.keymap.set("n", "<C-j>", "<C-w>j", defaultOpts({ desc = "Go to lower window" }))
vim.keymap.set("n", "<C-k>", "<C-w>k", defaultOpts({ desc = "Go to upper window" }))

-- Line movement
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", defaultOpts({ desc = "Move up in normal" }))
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", defaultOpts({ desc = "Move down in normal" }))

vim.keymap.set("v", "<A-k>", ":m '>-2<CR>gv=gv", defaultOpts({ desc = "Move up in visual" }))
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", defaultOpts({ desc = "Move down in visual" }))

vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", defaultOpts({ desc = "Move up in input" }))
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", defaultOpts({ desc = "Move down in input" }))

-- Better indenting
vim.keymap.set("v", ">", ">gv", defaultOpts({ desc = "Indent and keep visual" }))
vim.keymap.set("v", "<", "<gv", defaultOpts({ desc = "Indent and keep visual" }))

-- lazy
vim.keymap.set("n", "<Leader>l", "<Cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
