-- lua/plugins/neoscroll.lua

return {
	"karb94/neoscroll.nvim",
	event = "VeryLazy",
	config = function()
		local neoscroll = require("neoscroll")

		neoscroll.setup({
			hide_cursor = false,
			stop_eof = true,
			respect_scrolloff = true,
			cursor_scrolls_alone = true,
			duration_multiplier = 1.0,
			easing = "sine",
		})

		local keymap = {
			["<C-u>"] = function()
				neoscroll.ctrl_u({ duration = 200 })
			end,
			["<C-d>"] = function()
				neoscroll.ctrl_d({ duration = 200 })
			end,
			["<C-b>"] = function()
				neoscroll.ctrl_b({ duration = 350 })
			end,
			["<C-f>"] = function()
				neoscroll.ctrl_f({ duration = 350 })
			end,
			["zt"] = function()
				neoscroll.zt({ half_win_duration = 150 })
			end,
			["zz"] = function()
				neoscroll.zz({ half_win_duration = 150 })
			end,
			["zb"] = function()
				neoscroll.zb({ half_win_duration = 150 })
			end,
		}

		local modes = { "n", "v", "x" }
		for key, func in pairs(keymap) do
			vim.keymap.set(modes, key, func)
		end
	end,
}
