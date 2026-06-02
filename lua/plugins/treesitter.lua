-- lua/plugins/treesitter.lua

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup()

		-- Install parsers for languages in use
		require("nvim-treesitter").install({
			"lua",
			"vim",
			"vimdoc",
			"bash",
			"rust",
			"json",
			"yaml",
			"toml",
			"markdown",
			"markdown_inline",
		})

		-- Enable treesitter highlighting per filetype
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(ev)
				pcall(vim.treesitter.start, ev.buf)
			end,
		})
	end,
}
