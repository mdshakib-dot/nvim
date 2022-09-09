local wk = require("which-key")
local mappings = {
	q = { "<cmd>q<cr>", "Quit" },
	b = { "<cmd>bwipeout<cr>", "Close Current buffer" },
	B = { "<cmd>bwipeout!<cr>", "Force close current Buffer" },
	w = { "<cmd>w<cr>", "Save" },
	Q = { "<cmd>q!<cr>", "Quit no-change" },
	T = { "<cmd>terminal<cr>isam<cr>clear<cr>", "Terminal" },
	t = { "<cmd>Telescope<cr>", "Telescope Menu" },
	e = { "<cmd>NvimTreeToggle<cr>", "File Explorer" },
	F = { "<cmd>lua vim.lsp.buf.formatting()<cr>1<cr><cr>", "Format" },
	fb = { "<cmd>Telescope file_browser<cr>", "Telescope file_browser" },
	ff = { "<cmd>Telescope find_files<cr>", "Search by File name" },
	r = { "<cmd>Telescope live_grep<cr>", "Live grep" },
	c = { "<cmd>PickColor<cr>", "Color-Picker" },
	d = { "zc", "Fold Code" },
	ud = { "zo", "Unfold Code" },
	l = {
		name = "LSP",
		i = { "<cmd>LspInfo<cr>", "Connected language_servers" },
		k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
		K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Command" },
		w = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add Workspace Folder" },
		W = { "<cmd>lua vim.lsp.buf.remove_workspace_folder<cr>", "Remove Workspace Folder" },
		l = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", "List Workspace Folder" },
		t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
		d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition" },
		D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration" },
		r = { "<cmd>lua vim.lsp.buf.references()<cr>", "Reference" },
		R = { "<cmd>Lspsaga rename<cr>", "Rename" },
		a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
		e = { "<cmd>Lspsaga show_line_diagnostics<cr>", "Show Line Diagnostic" },
		n = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Go To Next Diagnostic" },
		N = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "Go To Previous Diagnostic" },
	},
}
local opts = {
	prefix = "<leader>",
}

wk.register(mappings, opts)
