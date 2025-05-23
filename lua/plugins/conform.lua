return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
			},
			-- format_on_save = {
			-- 	lsp_fallback = true,
			-- 	async = true,
			-- 	timeout_ms = 3000,
			-- },
		})
	end,
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ lsp_fallback = true, async = true, timeout_ms = 500 })
			end,
			desc = "Format with Conform",
		},
	},
}
