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

-- more keybinds!

return M
