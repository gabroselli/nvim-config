return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	ft = { "markdown", "codecompanion" },
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		file_types = { "markdown", "codecompanion" },
		code = {
			enabled = true,
			sign = false,
			style = "full",
			border = "thin",
			width = "block",
		},
		heading = {
			enabled = true,
			sign = false,
		},
	},
}
