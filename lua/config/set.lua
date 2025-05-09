vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")

vim.updatetime = 50
vim.colorcolumn = "80"

vim.g.mapleader = ' '

vim.opt.mouse = ''

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Supress deprecation notices
vim.deprecate = function() end
