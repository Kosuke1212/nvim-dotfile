vim.o.shiftwidth = 0
vim.o.softtabstop = -1
vim.o.tabstop = 4
vim.o.number = true
vim.o.cursorline = true

vim.g.mapleader = " "

vim.o.termguicolors = true
vim.o.wrap = false

vim.o.pumblend = 30
vim.o.winblend = 20

vim.diagnostic.config({
	virtual_text = false,
	float = {
		border = "single",
	}
})
