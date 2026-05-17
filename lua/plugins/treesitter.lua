return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"diff",
			"dockerfile",
			"embedded_template", -- ERB support
			"html",
			"javascript",
			"json",
			"lua",
			"luadoc",
			"helm",
			"markdown",
			"markdown_inline",
			"python",
			"ruby",
			"toml",
			"typescript",
			"vim",
			"vimdoc",
			"yaml",
		},
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.install").prefer_git = true
		require("nvim-treesitter.configs").setup(opts)
	end,
}
