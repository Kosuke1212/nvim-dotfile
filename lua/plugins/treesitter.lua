return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufNewFile", "BufRead" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
                "luadoc",
				"vim",
				"vimdoc",
				"python",
				"html",
				"css",
				"javascript",
				"typescript",
				"json",
				"toml",
                "yaml",
				"markdown",
				"sql",
				"cpp",
				"c",
				"regex",
				"bash",
                "powershell",
                "dockerfile",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = false,
			},
		})
	end,
}
