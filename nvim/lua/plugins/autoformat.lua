return {
	"stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
	keys = {
		{
			"<Leader>o",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format the current buffer",
		},
	},
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { { "prettierd", "prettier" } },
			typescriptreact = { { "prettierd", "prettier" } },
			typescript = { { "prettierd", "prettier" } },
		},
	},
  init = function()
    -- If you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
