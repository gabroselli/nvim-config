return {
	"tpope/vim-rails",
	ft = { "ruby", "eruby", "yaml" },
	dependencies = {
		"tpope/vim-bundler", -- Bundler integration
	},
	config = function()
		-- Rails navigation keymaps
		vim.keymap.set("n", "<leader>ra", "<cmd>A<cr>", { desc = "Rails: Alternate file" })
		vim.keymap.set("n", "<leader>rv", "<cmd>AV<cr>", { desc = "Rails: Alternate (vsplit)" })
		vim.keymap.set("n", "<leader>rs", "<cmd>AS<cr>", { desc = "Rails: Alternate (split)" })
		vim.keymap.set("n", "<leader>rr", "<cmd>R<cr>", { desc = "Rails: Related file" })

		-- Rails generators/commands
		vim.keymap.set("n", "<leader>rc", "<cmd>Rails console<cr>", { desc = "Rails: Console" })
		vim.keymap.set("n", "<leader>rg", "<cmd>Rails generate<cr>", { desc = "Rails: Generate" })
		vim.keymap.set("n", "<leader>rd", "<cmd>Rails db:migrate<cr>", { desc = "Rails: db:migrate" })

		-- Quick navigation to Rails components
		vim.keymap.set("n", "<leader>em", "<cmd>Emodel<cr>", { desc = "Rails: Edit model" })
		vim.keymap.set("n", "<leader>ev", "<cmd>Eview<cr>", { desc = "Rails: Edit view" })
		vim.keymap.set("n", "<leader>ec", "<cmd>Econtroller<cr>", { desc = "Rails: Edit controller" })
		vim.keymap.set("n", "<leader>eh", "<cmd>Ehelper<cr>", { desc = "Rails: Edit helper" })
		vim.keymap.set("n", "<leader>ej", "<cmd>Ejavascript<cr>", { desc = "Rails: Edit javascript" })
		vim.keymap.set("n", "<leader>es", "<cmd>Estylesheet<cr>", { desc = "Rails: Edit stylesheet" })
		vim.keymap.set("n", "<leader>ei", "<cmd>Einitializer<cr>", { desc = "Rails: Edit initializer" })
		vim.keymap.set("n", "<leader>el", "<cmd>Elocale<cr>", { desc = "Rails: Edit locale" })
		vim.keymap.set("n", "<leader>et", "<cmd>Espec<cr>", { desc = "Rails: Edit spec" })
	end,
}
