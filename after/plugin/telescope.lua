local builtin = require("telescope.builtin")
local telescope = require("telescope").load_extension("ui-select")

vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>ht", builtin.help_tags, { desc = "Telescope help tags" })
-- vim.keymap.set('n', '<C-o>', builtin.git_files, { desc = 'Telescope git files' })
-- ^^ Dependent on creating git lib for neovim
vim.keymap.set("n", "<C-o>", builtin.find_files, { desc = "Telescope find file" })
