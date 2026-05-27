-- lua/plugins/indent.lua

return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local hooks = require("ibl.hooks")

		-- register our meloworld indent color
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "MeloworldIndent", { fg = "#2e2e2e" })
			vim.api.nvim_set_hl(0, "MeloworldScope", { fg = "#80cbc4" }) -- teal for active scope
		end)

		require("ibl").setup({
			indent = {
				char = "│",
				highlight = { "MeloworldIndent" },
			},
			scope = {
				enabled = true,
				highlight = { "MeloworldScope" },
				show_start = false, -- no underline at scope start
				show_end = false, -- no underline at scope end
			},
		})
	end,
}
