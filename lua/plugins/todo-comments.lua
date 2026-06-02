-- lua/plugins/todo-comments.lua

return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = "BufReadPre",
	opts = {}, -- defaults are great out of the box
}
