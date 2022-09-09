--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

--Language servers
require("lspconfig").pyright.setup({ capabilities = capabilities })
require("lspconfig").bashls.setup({ capabilities = capabilities })
require("lspconfig").emmet_ls.setup({ capabilities = capabilities })
require("lspconfig").tsserver.setup({ capabilities = capabilities })
require("lspconfig").svelte.setup({ capabilities = capabilities })
require("lspconfig").tailwindcss.setup({ capabilities = capabilities })
require("lspconfig").sumneko_lua.setup({ capabilities = capabilities })
require("lspconfig").cssls.setup({ capabilities = capabilities })
require'lspconfig'.yamlls.setup{}
