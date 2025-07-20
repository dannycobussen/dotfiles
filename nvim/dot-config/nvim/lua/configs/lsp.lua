local capabilities = vim.tbl_deep_extend(
  "force",
  vim.lsp.protocol.make_client_capabilities(),
  require("cmp_nvim_lsp").default_capabilities()
)
local lspconfig = require("lspconfig")

local servers = {
  eslint = {
    on_attach = function(_, bufnr)
      vim.api.nvim_create_autocmd("BufWritePre", { buffer = bufnr, command = "EslintFixAll" })
    end,
  },

  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },

  vimls = {},

  ts_ls = {},
  tailwindcss = {},
  intelephense = {},
  twiggy_language_server = {},
  ansiblels = {},
  elixirls = {
    cmd = { "/Users/danny/.local/share/nvim/mason/bin/elixir-ls" },
  },
}

local ensure_installed = vim.tbl_keys(servers or {})
vim.list_extend(ensure_installed, {
  "stylua",
  "prettierd",
})

for server_name, server_config in pairs(servers) do
  server_config.capabilities = capabilities
  lspconfig[server_name].setup(server_config)
end

require("mason").setup()
require("mason-tool-installer").setup({
  ensure_installed,
})
require("mason-lspconfig").setup()
