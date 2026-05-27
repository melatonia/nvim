-- lua/plugins/treesitter.lua

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup()

		-- Install parsers asynchronously
		require("nvim-treesitter").install({
			"lua",
			"vim",
			"vimdoc",
			"c",
			"cpp",
			"rust",
			"html",
			"css",
			"javascript",
			"typescript",
			"python",
			"bash",
			"json",
			"yaml",
			"toml",
			"markdown",
			"markdown_inline",
			"qml",
		})

		-- Enable highlighting per filetype
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(ev)
				pcall(vim.treesitter.start, ev.buf)
			end,
		})

		-- Enable indentation per filetype
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
