return {
	"norcalli/nvim-colorizer.lua",
	event = { "BufReadPost", "BufNewFile",},
	opts = {
		"*",
		lua = {
			hsl_fn = true,
		}
	},
}
