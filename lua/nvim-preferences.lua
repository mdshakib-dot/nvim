--This Block of Code is my Neovim Preference Setting
vim.cmd("autocmd!")
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = "bash"
vim.opt.backupskip = "/tmp/*,/private/tmp/*"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true --Auto Indent
vim.opt.si = true --Smart Indent
vim.opt.wrap = false --Wrap line set No
vim.opt.backspace = "start,eol,indent"
vim.opt.path:append({ "**" }) --Finding file search down subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.copyindent = true
vim.opt.cursorline = true
vim.opt.mouse = "a"
vim.opt.history = 20
vim.opt.lazyredraw = true
vim.opt.preserveindent = true
--Undercurl
vim.cmd([[let &t_Cs ="\e[4:3m"]])
vim.cmd([[let &t_Ce ="\e[4:0m"]])
--Turn off paste mode when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})

vim.opt.formatoptions:append({ "r" })
vim.g.mapleader = " "
vim.keymap.set("n", "<space>W", ":lua vim.lsp.buf.format()<Cr>:w<Cr>")
vim.keymap.set("n", "<space>w", ":w<Cr>")
vim.keymap.set("n", "<space>q", ":q<Cr>")
vim.cmd("set timeoutlen=5000")
vim.keymap.set("n", "<space>bq", ":bd<Cr>")
vim.keymap.set("n", "<C-b>q", ":bd!<Cr>")
