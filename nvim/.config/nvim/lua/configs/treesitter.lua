require("nvim-treesitter.configs").setup({
  auto_install = true,
  ensure_installed = { 
    "lua", 
    "vim", 
    "vimdoc", 
    "javascript", 
    "html", 
    "elixir", 
    "rust",
  },
  highlight = { enable = true },
  indent = { enable = true },
})

