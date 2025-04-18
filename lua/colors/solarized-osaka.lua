return {
	"craftzdog/solarized-osaka.nvim",
	-- lazy = true,
	priority = 1000,
	config = function()
		require("solarized-osaka").setup({
			transparent = true,
			italic = true,
			-- Neotree transparent settings
			on_highlights = function(hl, c)
				hl.NeoTreeNormal = {
					bg = "none",
				}
				hl.NeoTreeNormalNC = {
					bg = "none",
				}
				hl.NeoTreeDirectoryIcon = {
					fg = c.cyan,
				}
				hl.NeoTreeDirectoryName = {
					fg = c.cyan,
				}
			end,
		})
		vim.cmd("colorscheme solarized-osaka")
	end,
}
