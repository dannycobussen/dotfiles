-- return {
--   "ricardoraposo/gruvbox-minor.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
-- }
return {
  "tinted-theming/base16-vim",
  config = function()
    require("configs.colorscheme")
  end,
}
