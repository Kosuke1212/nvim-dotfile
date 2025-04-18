return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		signcolumn = true,
		-- signs = {
		-- 	add = { text = "+" },
		-- 	change = { text = "~" },
		-- 	delete = { text = "_" },
		-- 	topdelete = { text = "‾" },
		-- 	changedelete = { text = "_" },
		-- },
	},
}
