vim.api.nvim_create_autocmd({"ColorScheme", "VimEnter"}, {
    group = vim.api.nvim_create_augroup('Color', {}),
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "CursorLineNr", {fg = "#f6b2f7"})
        vim.api.nvim_set_hl(0, "LineNr", {fg = "#FFFFFF"})
    end
})
