return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufNewFile", "BufRead" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"python",
				"toml",
				"html",
				"css",
				"bash",
				"javascript",
				"json",
				"markdown",
				"typescript",
				"sql",
				"cpp",
				"c",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
