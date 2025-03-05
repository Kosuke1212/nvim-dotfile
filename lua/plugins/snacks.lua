return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		picker = { enabled = true },
	},
	keys = {
		{"<leader>,",function() Snacks.picker.smart() end, desc = "Smart Find Files"}
	}
}
