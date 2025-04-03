return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		preset = "helix",
		spec = {
			{ "<leader>s", group = "Pickers", icon = { icon = "󰍉", color = "purple" } },
			{ "<leader>u", group = "Toggle", icon = { icon = "", color = "green" } },
			{ "<leader>f", group = "Find", icon = { icon = "󰮗", color = "purple" } },
			{ "<leader>g", group = "Git", icon = { icon = "", color = "orange" } },
		},
		trigger = { "<leader>" },
		win = {
			border = "single",
		},
	},
}
