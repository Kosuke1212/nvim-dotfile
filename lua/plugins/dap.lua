return -- nvim-dapを中心にしたDAP関連の読み込み例
{
	"mfussenegger/nvim-dap",
	event = "VeryLazy",
	dependencies = {
		{
			"rcarriga/nvim-dap-ui",
			dependencies = {
				"nvim-neotest/nvim-nio",
			},
			config = function()
				require("dapui").setup()
			end,
		},
		{
			"theHamsta/nvim-dap-virtual-text",
			config = function()
				require("nvim-dap-virtual-text").setup()
			end,
		},
		{
			"jay-babu/mason-nvim-dap.nvim",
			dependencies = { "williamboman/mason.nvim" },
			-- config = function()
			-- 	require("mason-nvim-dap").setup({
			-- 		automatic_setup = true,
			-- 		handlers = {},
			-- 	})
			-- end,
		},
	},
	keys = {
		{
			"<leader>du",
			function()
				require("dapui").toggle()
			end,
			desc = "toggle dap-ui",
		},
		{
			"<leader>dd",
			function()
				require("dap").continue()
			end,
			desc = "Debug: start/cotinue",
		},
		{
			"<leader>dm",
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "Debug: toggle break",
		},
	},
	config = function()
		local dap = require("dap")
		-- アダプタ設定やキーマップなど
		-- Mason Dap
		local mason_dap = require("mason-nvim-dap")
		mason_dap.setup({
			ensure_installed = { "python" },
			automatic_installation = true,
		})
	end,
}
