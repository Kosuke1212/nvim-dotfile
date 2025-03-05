return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle position=left<cr>", desc = "Neotree toggle"},
	},
	opts = {
		window = { position = 'current' },
		filesystem = {
			window = {
				width = 28
			},
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
			},
			-- hijack_netrw_behavior = 'open_default',
		},
	}
}
