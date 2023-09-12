-- Options for keybindings
-- "noremap": No recursive mapping
-- "silent": Show no message when keybinding is used
local opts = {noremap = true, silent = true} 

local keymap = vim.api.nvim_set_keymap

-- ===== Normal Mode =====

-- Better window navigation
-- Doesn't require the extra w press when switching windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize splits
keymap("n", "<A-n>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-m>", ":vertical resize +2<CR>", opts)
keymap("n", "<A-v>", ":horizontal resize -2<CR>", opts)
keymap("n", "<A-b>", ":horizontal resize +2<CR>", opts)

-- Better buffer navigation
keymap("n", "<A-l>", ":bnext<CR>", opts)
keymap("n", "<A-h>", ":bprevious<CR>", opts)

-- ===== Visual Mode =====

-- Stay in indent mode after indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
