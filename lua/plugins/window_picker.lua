return {
	"s1n7ax/nvim-window-picker",
	name = "window-picker",
	event = "VeryLazy",
	version = "2.*",
	keys = {
		{
			"<leader>w",
			function()
				local win = require("window-picker").pick_window() or vim.api.nvim_get_current_win()
				vim.api.nvim_set_current_win(win)
			end,
			desc = "Pick window",
		},
	},
	config = function()
		require("window-picker").setup({
			hint = "floating-big-letter",
		})
	end,
}
