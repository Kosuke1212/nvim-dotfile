return {
	'stevearc/aerial.nvim',
	opts = {},
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons"
	},
	keys = {
		{ "<leader>i", "<cmd>AerialToggle<CR>", desc = "AerialToggle"},
	}
}
