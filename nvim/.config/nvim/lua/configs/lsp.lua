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

  stylua = {},
  vimls = {},
  prettierd = {},

  tsserver = {},
  tailwindcss = {},
  intelephense = {},
  twiggy_language_server = {},
  ansiblels = {},
}

require("mason").setup()
require("mason-tool-installer").setup({
  ensure_installed = vim.tbl_keys(servers or {}),
})

require("mason-lspconfig").setup_handlers({
  function(server_name)
    local server_config = servers[server_name] or {}

    server_config.capabilities = capabilities
    lspconfig[server_name].setup(server_config)
  end,
})
