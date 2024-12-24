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

-- If using nvim-java/nvim-java, don't setup jdtls
-- It is setup in the after file for that plugin
lsp_config.kotlin_language_server.setup({})
lsp_config.dartls.setup({})
lsp_config.nil_ls.setup({})
lsp_config.bashls.setup({})
lsp_config.dockerls.setup({})

require("typescript-tools").setup({})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
