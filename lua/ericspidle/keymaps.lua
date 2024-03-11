local opts = {noremap = true, silent = true}

local term_opts = { silent = true}

-- conveinence variable 
local keymap = vim.api.nvim_set_keymap

-- Leader 
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better Window navigation 
keymap("n", "<C-h>", "<C-w>h", opts) -- remap navigation to be ctrl + dir for windows rather then ctrl + w + dir 
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":veritcal resize +2<CR>", opts)

keymap("n", "<S-l>", ":bnext<CR>", opts) 
keymap("n", "<S-h>", ":bprevious<CR>", opts)


keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "<A-j>", ":m .+1<CR>==", opts) 
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
