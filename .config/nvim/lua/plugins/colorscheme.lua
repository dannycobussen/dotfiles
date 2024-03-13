return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      overrides = {
        SignColumn = { bg = "none" },
      },
      contrast = "soft",
      bold = false,
    })

    vim.opt.background = "dark"
    vim.cmd([[colorscheme gruvbox]])
  end,
}

-- return {
--   "savq/melange-nvim",
--   config = function()
--     vim.cmd([[colorscheme melange]])
--   end,
-- }
