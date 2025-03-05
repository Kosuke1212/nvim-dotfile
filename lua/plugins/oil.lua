return {
	"stevearc/oil.nvim",
	---@module "oil"
	---@type oil.SetupOpts
	opts = {},
	dependencies = {
		"echasnovski/mini.icons",
	},
	keys = {
		{ "<leader>fo", "<cmd>Oil<cr>", desc = "Oil"}
	}
}
