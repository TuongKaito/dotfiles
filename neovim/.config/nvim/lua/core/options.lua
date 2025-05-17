---------------------
-- Number Line Bar --
---------------------
vim.wo.number = true
vim.o.relativenumber = true
vim.o.fillchars = "eob:.,"

-----------------
-- Tab Options --
-----------------
vim.o.expandtab = true  -- expand tab with space characters
-- vim.o.autoindent = true
-- These numbers may be overridden by filetype in `after/ftplugin`
vim.o.shiftwidth = 2
vim.o.tabstop = 2

------------
-- Others --
------------
vim.o.clipboard = "unnamedplus"  -- Sync clipboard between OS and Neovim

vim.g.have_nerd_font = true

-- As required by nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
