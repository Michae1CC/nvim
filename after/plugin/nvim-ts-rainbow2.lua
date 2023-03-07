vim.api.nvim_set_hl(0, "TSRainbowYellow", { fg = "#FFD700" })
vim.api.nvim_set_hl(0, "TSRainbowViolet", { fg = "#DA70D6" })
vim.api.nvim_set_hl(0, "TSRainbowCyan", { fg = "#179fff" })

require("nvim-treesitter.configs").setup({
	rainbow = {
		enable = true,
		-- list of languages you want to disable the plugin for
		disable = {},
		-- Which query to use for finding delimiters
		query = "rainbow-parens",
		-- Highlight the entire buffer all at once
		strategy = require("ts-rainbow.strategy.global"),
		hlgroups = {
			"TSRainbowYellow",
			"TSRainbowViolet",
			"TSRainbowCyan",
		},
	},
})
