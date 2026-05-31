-- lua/plugins/glow.lua

return {
	"ellisonleao/glow.nvim",
	ft = { "markdown" },
	cmd = "Glow",
	opts = {
		style = "dark",
		width = 120,
		height = 100,
		border = "rounded",
	},
	keys = {
		{ "<leader>mg", "<cmd>Glow<cr>", desc = "Glow preview" },
	},
}
