local builtin = require("telescope.builtin")
local telescope = require("telescope").load_extension("ui-select")

vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>ht", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<M-o>", builtin.find_files, { desc = "Telescope find file" })
