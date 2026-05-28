return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false, -- main branch does not support lazy-loading
	build = ":TSUpdate",
	config = function()
		local ensure_installed = {
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
		}

		require("nvim-treesitter").install(ensure_installed)

		-- Enable highlighting (and experimental indent) per buffer. On the main
		-- branch there is no `highlight`/`indent` option table; you start the
		-- features yourself via a FileType autocommand.
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				-- Only start if a parser is available for this buffer's language.
				local ft = vim.bo[args.buf].filetype
				local lang = vim.treesitter.language.get_lang(ft)
				if not (lang and vim.treesitter.language.add(lang)) then
					return
				end

				pcall(vim.treesitter.start, args.buf, lang)
				vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
