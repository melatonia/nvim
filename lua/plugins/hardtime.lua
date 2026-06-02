-- lua/plugins/hardtime.lua

return {
	"m4xshen/hardtime.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	event = "VeryLazy",
	opts = {
		enabled = true,
		disable_mouse = false, -- keep mouse working
		hint = true, -- show the motion hint popup ← the whole point
		restriction_mode = "hint", -- "hint" shows a popup but does NOT block the key
		max_count = 5, -- hint fires after repeating a key 5 times in a row
		-- don't restrict anything, just nudge
		restricted_keys = {},
		disabled_keys = {},
	},
}
