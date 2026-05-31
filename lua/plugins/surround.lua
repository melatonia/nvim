-- lua/plugins/surround.lua

return {
	"nvim-mini/mini.surround",
	branch = "stable",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		mappings = {
			add = "gsa", -- add surrounding
			delete = "gsd", -- delete surrounding
			replace = "gsr", -- replace surrounding
			find = "gsf", -- find surrounding
			find_left = "gsF", -- find surrounding to the left
			highlight = "gsh", -- highlight surrounding
			update_n_lines = "gsn", -- update n_lines
		},
	},
}
