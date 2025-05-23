return {
	"b0o/incline.nvim",
	event = "VeryLazy",
	opts = {},
	config = function()
		local colors = require("solarized-osaka.colors").setup()

		require("incline").setup({
			highlight = {
				groups = {
					InclineNormal = { guibg = colors.magenta500, guifg = colors.base04 },
					InclineNormalNC = { guibg = colors.violet500, guifg = colors.base03 },
				},
			},
			window = {
				placement = {
					horizontal = "right",
				},
			},
			render = function(props)
				local devicons = require("nvim-web-devicons")
				local helpers = require("incline.helpers")
				local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
				if filename == "" then
					filename = "[No Name]"
				end
				local ft_icon, ft_color = devicons.get_icon_color(filename)
				local modified = vim.bo[props.buf].modified
				return {
					-- ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or "",
					ft_icon and { " ", ft_icon, " ", guifg = ft_color } or "",
					" ",
					{ filename, gui = modified and "bold,italic" or "bold" },
					" ",
				}
			end,
		})
	end,
}
