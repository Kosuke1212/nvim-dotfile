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
			{ "<leader>s", group = "Search", icon = { icon = "󰍉", color = "purple" } },
			{ "<leader>u", group = "Toggle", icon = { icon = "󰨚", color = "orange" } },
			{ "<leader>f", group = "Find", icon = { icon = "", color = "green" } },
			{ "<leader>g", group = "Git", icon = { icon = "", color = "orange" } },
			{ "<leader>-", group = "Yazi", icon = { icon = "󰰳", color = "blue" } },
		},
		trigger = { "<leader>" },
		win = {
			border = "single",
		},
	},
}
