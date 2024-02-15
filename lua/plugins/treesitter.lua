return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            -- If on windows, use clang
            if vim.loop.os_uname().sysname == "Windows_NT" then
                require("nvim-treesitter.install").compilers = { "clang" }
            end

            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = {
                    "markdown_inline" -- Markdown (experimental)
                },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
}
