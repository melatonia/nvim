-- lua/plugins/dashboard.lua

return {
	"nvimdev/dashboard-nvim",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {
					"  ,-.       _,---._ __  / \\",
					" /  )    .-'       `./ /   \\",
					" (  (   ,'            `/    /|",
					"  \\  `-\"             \\'\\   / |",
					"   `.              ,  \\ \\ /  |",
					"    /`.          ,'-`----Y   |",
					"   (            ;        |   '",
					"  |  ,-.    ,-'         |  /",
					" |  | (   |      melo. | /",
					" )  |  \\  `.___________|/",
					"`--'   `--'            ",
				},
				center = {
					{
						icon = "  ",
						desc = "Find File",
						key = "f",
						action = "Telescope find_files",
					},
					{
						icon = "  ",
						desc = "Recent Files",
						key = "r",
						action = "Telescope oldfiles",
					},
					{
						icon = "  ",
						desc = "Find Text",
						key = "g",
						action = "Telescope live_grep",
					},
					{
						icon = "  ",
						desc = "Lazy",
						key = "l",
						action = "Lazy",
					},
					{
						icon = "  ",
						desc = "Quit",
						key = "q",
						action = "qa",
					},
				},
				footer = function()
					local version = vim.version()
					return {
						"",
						"  neovim v" .. version.major .. "." .. version.minor .. "." .. version.patch,
					}
				end,
			},
		})
	end,
}
