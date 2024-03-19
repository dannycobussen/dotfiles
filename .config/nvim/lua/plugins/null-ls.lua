return {
  "jay-babu/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
  },
  opts = {
    ensure_installed = { "stylua", "prettier", "prettierd" },
    automatic_installation = true,
  },
}
