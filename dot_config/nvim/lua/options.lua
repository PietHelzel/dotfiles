-- disable netrw in favour of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true -- Adds line numbers
vim.opt.relativenumber = true -- Makes line numbers relative

vim.opt.expandtab = true -- Use spaces for indent
vim.opt.shiftwidth = 4   -- Amount of spaces for indent

vim.opt.splitbelow = true -- Always split below on horizontal split
vim.opt.splitright = true -- Always split right on vertical split

vim.opt.termguicolors = true -- Better colors

vim.wo.signcolumn = "yes" -- Prevent text jumping when diagnostics appear

vim.opt.laststatus = 3 -- Global statusline

vim.g.mapleader = " "
