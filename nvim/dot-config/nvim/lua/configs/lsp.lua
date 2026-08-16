local capabilities = vim.tbl_deep_extend(
  "force",
  vim.lsp.protocol.make_client_capabilities(),
  require("cmp_nvim_lsp").default_capabilities()
)

require("mason").setup()
require("mason-lspconfig").setup({ automatic_enable = false })
require("mason-tool-installer").setup({
  ensure_installed = {
    "stylua",
    "prettierd",
  },
})

vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.config("eslint", {
  on_attach = function(_, bufnr)
    vim.api.nvim_buf_create_user_command(bufnr, "EslintFixAll", function()
      local client = vim.lsp.get_clients({ bufnr = bufnr, name = "eslint" })[1]
      if not client then
        return
      end

      client:exec_cmd({
        command = "eslint.applyAllFixes",
        arguments = {
          {
            uri = vim.uri_from_bufnr(bufnr),
            version = vim.lsp.util.buf_versions[bufnr],
          },
        },
      })
    end, {})

    vim.api.nvim_create_autocmd("BufWritePre", { buffer = bufnr, command = "EslintFixAll" })
  end,
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

vim.lsp.config("elixirls", {
  settings = {
    elixirLS = {
      dialyzerEnabled = false,
      fetchDeps = false,
      enableTestLenses = false,
      suggestSpecs = false,
    },
  },
})

vim.lsp.enable({
  "eslint",
  "lua_ls",
  "vimls",
  "gopls",
  "ts_ls",
  "tailwindcss",
  "intelephense",
  "twiggy_language_server",
  "ansiblels",
  "elixirls",
})
