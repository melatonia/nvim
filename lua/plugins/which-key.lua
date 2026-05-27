-- lua/plugins/which-key.lua

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		icons = {
			mappings = true,
		},
		spec = {
			{ "<leader>f", group = "find" },
			{ "<leader>g", group = "git" },
			{ "<leader>c", group = "code" },
			{ "<leader>n", group = "misc" },
		},
	},
}
