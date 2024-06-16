-- highlight on yank
local api = vim.api

api.nvim_create_autocmd("TextYankPost", {
  group = api.nvim_create_augroup("dotpixel-hlight-yank", { clear = true }),
  desc = "Highlight text on yank",
  callback = function()
    vim.highlight.on_yank()
  end,
})
