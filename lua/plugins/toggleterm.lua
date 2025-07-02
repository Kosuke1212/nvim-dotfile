return {
	"akinsho/toggleterm.nvim",
	keys = { "<C-t>" },
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-t>]],
			direction = "float",
			float_opts = {
				border = "single",
			},
			-- insert_mappings = true,
		})
	end,
}
