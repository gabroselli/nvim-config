return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux", -- Run tests in tmux pane
	},
	config = function()
		-- Use toggleterm for test output
		vim.g["test#strategy"] = "neovim"
		vim.g["test#neovim#term_position"] = "vert"

		-- Ruby/Rails test settings
		vim.g["test#ruby#rspec#executable"] = "bundle exec rspec"
		vim.g["test#ruby#minitest#executable"] = "bundle exec rails test"

		-- Test keymaps
		vim.keymap.set("n", "<leader>tn", "<cmd>TestNearest<cr>", { desc = "Test: Nearest" })
		vim.keymap.set("n", "<leader>tf", "<cmd>TestFile<cr>", { desc = "Test: File" })
		vim.keymap.set("n", "<leader>ts", "<cmd>TestSuite<cr>", { desc = "Test: Suite" })
		vim.keymap.set("n", "<leader>tl", "<cmd>TestLast<cr>", { desc = "Test: Last" })
		vim.keymap.set("n", "<leader>tv", "<cmd>TestVisit<cr>", { desc = "Test: Visit test file" })
	end,
}
