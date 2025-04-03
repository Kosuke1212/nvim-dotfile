return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hlchunk").setup({
			chunk = {
				enable = true,
				delay = 30,
				duration = 50,
				style = {
					"#6d71c1",
					"#DB302D",
				},
			},
			indent = {
				enable = true,
			},
		})
	end,
}
