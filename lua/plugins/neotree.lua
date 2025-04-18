return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle position=left<cr>", desc = "Neotree toggle" },
	},
	opts = {
		window = {
			position = "current",
			mappings = {
				["e"] = function()
					vim.api.nvim_exec("Neotree focus filesystem left", true)
				end,
				["b"] = function()
					vim.api.nvim_exec("Neotree focus buffers left", true)
				end,
				["g"] = function()
					vim.api.nvim_exec("Neotree focus git_status left", true)
				end,
			},
		},
		filesystem = {
			window = {
				width = 28,
			},
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
			},
			-- hijack_netrw_behavior = 'open_default',
		},
		default_component_configs = {
			git_status = {
				symbols = {
					-- Change type
					added = "",
					deleted = "",
					modified = "",
					renamed = "",
					-- Status type
					untracked = "",
					ignored = "",
					unstaged = "󰄱",
					staged = "",
					conflict = "",
				},
			},
		},
	},
}
