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

-- LSP's to not setup here:
-- jdtls: configured by nvim-java
-- dart_ls: configured by flutter_tools
lsp_config.kotlin_language_server.setup({})
lsp_config.nil_ls.setup({})
lsp_config.bashls.setup({})
lsp_config.dockerls.setup({})

require("typescript-tools").setup({})
require("flutter-tools").setup({})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
