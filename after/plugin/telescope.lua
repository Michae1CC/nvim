local builtin = require("telescope.builtin")

-- For help see type ':h telescope.builtin*'
-- These are the suggested remaps taken from the telescope git hub page
-- https://github.com/nvim-telescope/telescope.nvim
vim.keymap.set(
	"n",
	"<leader>ff",
	builtin.find_files,
	{ desc = "find/search for a file by name in the current directory" }
)
vim.keymap.set(
	"n",
	"<leader>fg",
	builtin.live_grep,
	{ desc = "[fg] Find/search for text/regex in the current directory" }
)
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[fb] View current buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set(
	"n",
	"<leader>pf",
	builtin.find_files,
	{ desc = "[pf] Find/search for text/regex in the current directory" }
)
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "[ps] Find/search for regex in current directory" })
vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer]" })
