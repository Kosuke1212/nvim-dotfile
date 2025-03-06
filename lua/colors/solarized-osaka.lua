return {
	"craftzdog/solarized-osaka.nvim",
	lazy = true,
	-- priority = 1000,
	config = function()
		require("solarized-osaka").setup({
			transparent = true,
			italic = true,
		})
		vim.cmd("colorscheme solarized-osaka")
	end,
}
