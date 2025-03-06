return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
		"L3MON4D3/LuaSnip",
	},
	version = "*",
	event = { "InsertEnter", "CmdLineEnter"},

	---@module "blink.cmp"
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "super-tab" },
		appearance = {
			use_nvim_cmp_as_default = true,
		},
		completion = {
			menu = { border = "single" },
			documentation = { window = { border = "single" } },
		},
		signature = { window = { border = "single" } },
		snippets = { preset = "luasnip" },
		sources = {
			default = { "lsp", "path", "snippets", "buffer"},
		},
	},
	opts_extend = { "sources.default" },
}
