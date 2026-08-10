return {
  -- "tinted-theming/base16-vim",
  -- "tinted-theming/tinted-vim",
  -- "EdenEast/nightfox.nvim",
  -- "neanias/everforest-nvim",
  -- "rebelot/kanagawa.nvim",
  -- "xero/miasma.nvim",
  -- "AlexvZyl/nordic.nvim",
  -- "ellisonleao/gruvbox.nvim",
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    require("configs.colorscheme")
  end,
}
