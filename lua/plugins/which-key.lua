return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.setup({})

		-- Register group labels
		wk.add({
			{ "<leader>e", group = "Edit (Rails)" },
			{ "<leader>r", group = "Rails/Rename" },
			{ "<leader>t", group = "Test/Toggle" },
			{ "<leader>s", group = "Search" },
			{ "<leader>d", group = "Document" },
			{ "<leader>w", group = "Workspace" },
			{ "<leader>b", group = "Buffer" },
		})
	end,
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
