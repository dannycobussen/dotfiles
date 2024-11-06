return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>o",
      function()
        require("conform").format({ async = true })
      end,
      mode = "",
      desc = "Format the entire buffer",
    },
  },
  opts = {
    format_on_save = {
      timeout_ms = 300,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      json = { "prettierd" },
    },
    formatters = {
      stylua = {
        prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
      },
    },
  },
  init = function()
    -- If you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
