local parsers = {
  "lua",
  "vim",
  "vimdoc",
  "javascript",
  "typescript",
  "tsx",
  "go",
  "php",
  "css",
  "json",
  "yaml",
  "bash",
  "markdown",
  "html",
  "elixir",
}

require("nvim-treesitter").install(parsers)

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lua",
    "vim",
    "help",
    "javascript",
    "typescript",
    "typescriptreact",
    "go",
    "php",
    "css",
    "json",
    "yaml",
    "bash",
    "markdown",
    "html",
    "elixir",
  },
  callback = function()
    pcall(vim.treesitter.start)
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
