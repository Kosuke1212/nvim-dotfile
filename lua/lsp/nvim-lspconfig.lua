return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup()

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"eslint_d",
				"black",
				"ruff",
				"shellcheck"
			},
			auto_update = true,
			run_on_start = true,
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"html",
				"cssls",
				"ts_ls",
			},
		})


		mason_lspconfig.setup_handlers({
			--サーバのcapabilitiesを設定
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
			--各サーバごとの設定で上書き
			["lua_ls"] = function()
				lspconfig["lua_ls"].setup({
					settings = {
						Lua = {
							diagnostics = {
								globals = {"vim"},
							},
							completion = {
								callSnippet = "Replace",
							},
						}
					}
				})
			end,
		})
	end,
}
