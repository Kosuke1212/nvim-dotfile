-- Set the leader key to space
vim.g.mapleader = " "

--Line numbers 
vim.opt.number = true
vim.opt.relativenumber = false

-- indent
vim.opt.expandtab = true
-- expandtabがtrueのとき，tabstopの値のスペースに置き換える
vim.opt.tabstop = 4
vim.opt.softtabstop = -1 -- follow shiftwidth
vim.opt.shiftwidth = 0 -- follow tabstop

vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = false

-- appearance
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.termguicolors = true

--sprit
vim.opt.splitbelow = true
vim.opt.splitright = true

-- wrap
vim.opt.wrap = true
vim.opt.linebreak = false

-- search
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true

-- IME
-- vim.opt.iminsert = 2

-- file
vim.opt.hidden = true
vim.opt.autoread = true
vim.opt.backup = false
vim.opt.swapfile = false
