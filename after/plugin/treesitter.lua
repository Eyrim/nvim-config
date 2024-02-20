-- If on windows, use clang
-- Other compilers don't seem to play well
if vim.loop.os_uname().sysname == "Windows_NT" then
	require("nvim-treesitter.install").compilers = { "clang" }
end

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"markdown_inline", -- Markdown (experimental)
	},
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },

	-- TextObjects config
	textobjects = {
		select = {
			enable = true,
			lookahead = true,

			keymaps = {
				["]C"] = "@class.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["]f"] = "@function.outer",
				["]F"] = "@function.inner",
				["]c"] = "@class.outer",
			},
			goto_previous_start = {
				["[f"] = "@function.outer",
				["[F"] = "@function.inner",
				["[c"] = "@class.outer",
				["[C"] = "@class.inner",
			},
		},
		swap = {
			enable = true,
			swap_next = {
				["<leader>s"] = "@parameter.inner",
			},
			swap_previous = {
				["<leader>S"] = "@parameter.inner",
			},
		},
	},
})
