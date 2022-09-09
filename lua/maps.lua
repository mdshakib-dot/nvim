local keymap = vim.keymap

vim.g.mapleader = " "

--Do not yank with x
keymap.set("n", "x", '"_x')

--Delete a word backward
keymap.set("n", "dr", 'vb"_d')

--Select All
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("i", "<C-a>", "<Esc>gg<S-v>G")
--New Tab
keymap.set("n", "te", ":tabedit<Return>", { silent = true })
keymap.set("i", "<C-s>", "<Esc>:w<cr>a", { silent = true })
keymap.set("i", "<C-f>", "<Esc>a", { silent = true })
keymap.set("i", "<C-c>", "<Esc>:PickColor<cr>", { silent = true })
keymap.set("n", "<C-c>", "<Esc>:PickColor<cr>", { silent = true })
keymap.set(
	"n",
	"<C-u>",
	"<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>",
	{ noremap = true, silent = true }
)
keymap.set(
	"n",
	"<C-d>",
	"<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>",
	{ noremap = true, silent = true }
)
