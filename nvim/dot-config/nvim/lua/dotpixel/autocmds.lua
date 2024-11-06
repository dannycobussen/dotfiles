local api = vim.api

-- highlight on yank
api.nvim_create_autocmd("TextYankPost", {
  group = api.nvim_create_augroup("dotpixel-hlight-yank", { clear = true }),
  desc = "Highlight text on yank",
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- LSP related mappings
api.nvim_create_autocmd("LspAttach", {
  group = api.nvim_create_augroup("dotpixel-lsp-attach", { clear = true }),
  desc = "Set mappings when LSP attach to buff",
  callback = function(event)
    -- Function to easily define mappings
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
    end

    local builtin = require("telescope.builtin")

    -- Jump to definition of the word under your cursor.
    map("gd", builtin.lsp_definitions, "[G]oto [D]efinition")

    -- Find references for the word
    map("gr", builtin.lsp_references, "[G]oto [R]eferences")
    map("gI", builtin.lsp_implementations, "[G]oto [I]mplementation")
    map("<leader>D", builtin.lsp_type_definitions, "Type [D]efinition")

    -- Rename variable under cursor
    map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
    map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
  end,
})
