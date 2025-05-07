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
		{
			"<leader>dt",
			function()
				require("dap").terminate()
			end,
			desc = "debug: terminate",
		},
	},
	config = function()
		local dap = require("dap")
		local dap_ui = require("dapui")

		--dap ui auto open/close setting
		dap.listeners.before.attach.dapui_config = function()
			dap_ui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dap_ui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dap_ui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dap_ui.close()
		end

		-- Mason Dap
		local mason_dap = require("mason-nvim-dap")
		mason_dap.setup({
			handlers = {},
			ensure_installed = { "python", "bash" },
			automatic_installation = true,
		})

		-- Icon settings
		vim.fn.sign_define("DapBreakpoint", {
			text = "●",
			texthl = "DiagnosticSignError",
			linehl = "",
			numhl = "",
		})

		vim.fn.sign_define("DapBreakpointCondition", {
			text = "◆",
			texthl = "DiagnosticSignWarn",
			linehl = "",
			numhl = "",
		})

		vim.fn.sign_define("DapLogPoint", {
			text = "◆",
			texthl = "DiagnosticSignInfo",
			linehl = "",
			numhl = "",
		})

		vim.fn.sign_define("DapStopped", {
			text = "→",
			texthl = "DiagnosticSignHint",
			linehl = "Visual",
			numhl = "",
		})

		vim.fn.sign_define("DapBreakpointRejected", {
			text = "✖",
			texthl = "DiagnosticSignError",
			linehl = "",
			numhl = "",
		})
	end,
}
