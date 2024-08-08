---@diagnostic disable: undefined-global
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver" },
			})
		end,
	},
	{

		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.css_variables.setup({ capabilities = capabilities })
			lspconfig.cssmodules_ls.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.emmet_language_server.setup({ capabilities = capabilities })
			lspconfig.jdtls.setup({capabilities=capabilities})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gb", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, {})
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<space>F", function()
				vim.lsp.buf.format({ async = true })
			end, {})
			vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
	{
		"nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({
			  ui = {
        code_action = ""
    }
			})
			vim.keymap.set("n","<space>le",":Lspsaga show_line_diagnostics<Cr>")
vim.keymap.set("n","<space>le",":Lspsaga show_line_diagnostics<Cr>")
		end,
	},
}
