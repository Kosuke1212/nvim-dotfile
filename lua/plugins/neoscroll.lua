return {
	"karb94/neoscroll.nvim",
	event = "VeryLazy",
	config = function()
		require("neoscroll").setup({
			hide_cursor = false,
		})
	end,
}
