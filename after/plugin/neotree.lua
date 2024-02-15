require("neo-tree").setup({
    window = {
        mappings = {
            ["l"] = "open",
            ["h"] = "close_node",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
            -- gt = fwd, gT = back
            ["t"] = "open_tabnew"
        }
    }
})

vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right toggle<CR>")

