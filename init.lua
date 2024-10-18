-- high priority options
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true



-- dependencies
require("config.lazy")


vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.cmd [[colorscheme tokyonight]]

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.signcolumn = 'yes'

vim.opt.inccommand = 'split'


vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
