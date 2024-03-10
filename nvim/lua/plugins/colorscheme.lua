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
    })

    vim.opt.background = "dark"
    vim.cmd([[colorscheme gruvbox]])
  end
} 
