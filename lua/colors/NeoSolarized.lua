return {
	"Tsuzat/NeoSolarized.nvim",
	lazy = true,
	-- priority = 1000,
	config = function()
		require("NeoSolarized").setup({
			comment_italics = true,
		})
		-- vim.cmd("colorscheme NeoSolarized")
	end,
}
