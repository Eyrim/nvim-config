local mason = require("mason").setup()
local mason_lspconfig = require("mason-lspconfig")
local nvim_lspconfig = require("lspconfig")

-- See :h mason-lspconfig.setup_handlers()
mason_lspconfig.setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function(server_name) -- Default handler
        require("lspconfig")[server_name].setup {}
    end,
    -- Next, you can provide a dedicated handler for specific servers.
    -- For example, a handler override for the `rust_analyzer`:
    --["rust_analyzer"] = function ()
    --    require("rust-tools").setup {}
    --end
    ["lua_ls"] = function ()
        nvim_lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        }
    end,
}

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
