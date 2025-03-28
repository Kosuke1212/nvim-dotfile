return {
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		event = "VeryLazy",
		config = function ()
			local mason = require("mason")
			local mason_lspconfig = require("mason-lspconfig")
			local mason_tool_installer = require("mason-tool-installer")
			
			mason.setup()

			mason_lspconfig.setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"html",
					"cssls",
					"ts_ls",
				},
			})

			mason_tool_installer.setup({
				ensure_installed = {
					"prettier",
					"eslint_d",
					"shellcheck",
				}
			})
		end
}
