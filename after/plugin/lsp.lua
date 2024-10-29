local mason_lspconfig = require("mason-lspconfig")
local nvim_lspconfig = require("lspconfig")

-- See :h mason-lspconfig.setup_handlers()
mason_lspconfig.setup_handlers({
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name) -- Default handler
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
		})
	end,
	--["rust_analyzer"] = function ()
	--    require("rust-tools").setup {}
	--
	["lua_ls"] = function()
		nvim_lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
