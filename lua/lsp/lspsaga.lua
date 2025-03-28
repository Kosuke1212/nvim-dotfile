return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	event = "LspAttach",
	opts = {},
	keys = {
		{ "K", "<cmd>Lspsaga hover_doc<CR>", desc = "hover_doc"}
	}
}
