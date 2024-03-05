local catppuccin = require("catppuccin")

catppuccin.setup({
	flavour = "mocha",
	dim_inactive = {
		enabled = true, -- dims the background color of inactive window
		shade = "dark",
		percentage = 0.15, -- percentage of the shade to apply to the inactive window
	},
	styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "italic" }, -- Change the style of comments
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
		-- miscs = {}, -- Uncomment to turn off hard-coded styles
	},
	color_overrides = {
		mocha = {
			text = "#F4CDE9",
			subtext1 = "#DEBAD4",
			subtext0 = "#C8A6BE",
			overlay2 = "#B293A8",
			overlay1 = "#9C7F92",
			overlay0 = "#866C7D",
			surface2 = "#705867",
			surface1 = "#5A4551",
			surface0 = "#44313B",

			base = "#352939",
			mantle = "#211924",
			crust = "#1a1016",
		},
	},
})

vim.cmd.colorscheme("catppuccin")
