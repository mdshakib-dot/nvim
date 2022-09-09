local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	sources = {
		--****************Formatting********************
		--Lua Formatter
		formatting.stylua,
		--Python Formatter
		formatting.autopep8,
		--Bash Formatter
		formatting.shfmt,
		--Web Formatter
		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
	},
})
