vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("dotpixel-highlight-yank", { clear = true }),
  desc = "Highlight yanked text",
  callback = function()
    vim.highlight.on_yank()
  end
})
