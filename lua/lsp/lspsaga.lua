return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	event = "LspAttach",
	opts = {
		lightbulb = {
			enable = false,
		},
		symbol_in_winbar = {
			enable = false,
		},
		diagnostic = {
			diagnostic_only_current = true,
		}
	},
	keys = {
		{ "K", "<cmd>Lspsaga hover_doc<CR>", desc = "hover_doc"},
		{ "<leader>fl", "<cmd>Lspsaga finder<CR>", desc = "lsp_finder"},
		{ "gh", "<cmd>Lspsaga incoming_calls<CR>", desc = "Incoming calls"},
		{ "ghh", "<cmd>Lspsaga outgoing_calls<CR>", desc = "Outcoming calls"},
		{ "gd", "<cmd>Lspsaga peek_definition<CR>", desc = "Peek definition"},
		{ "gd", "<cmd>Lspsaga peek_definition<CR>", desc = "Peek definition"},
		{ "gt", "<cmd>Lspsaga peek_type_definition<CR>", desc = "Peek type definition"},
		{ "ga", "<cmd>Lspsaga code_action<CR>", desc = "Code Action"},
		{ "gr", "<cmd>Lspsaga rename<CR>", desc = "Rename"},
		{ "g]", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "Diagnostics jump next"},
		{ "g[", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "Diagnostics jump prev"},
	}
}
