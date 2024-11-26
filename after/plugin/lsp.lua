local lsp_config = require("lspconfig")
lsp_config.lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
lsp_config.kotlin_language_server.setup({})
lsp_config.dartls.setup({})
lsp_config.nil_ls.setup({})
lsp_config.bashls.setup({})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
