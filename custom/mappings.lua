---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
	},
}

M.tabufline = {
	n = {
		["<leader>X"] = {
			function()
				require("nvchad_ui.tabufline").closeAllBufs()
			end,
			"Close all buffers",
		},

		["<leader>C"] = {
			function()
				require("nvchad_ui.tabufline").closeOtherBufs()
			end,
			"Close all buffers except current one",
		},
	},
}

M.telescope = {
	n = {
		-- find
		["<leader>fg"] = { "<cmd> Telescope git_files <CR>", "Find files tracked by Git" },

		-- git
		["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
		["<leader>gb"] = { "<cmd> Telescope git_branches <CR>", "Git branches" },
	},
}

-- more keybinds!

return M
