local M = {}

M.general = {
  i = {
    -- Remap <Esc> to jj
    ["jj"] = { "<ESC>", "Esc key" },
  },
}

M.nvterm = {
  plugin = true,
  n = {
    -- toggle in normal mode
    ["<C-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },

  t = {
    -- toggle in terminal mode
    ["<C-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
    ["<TAB>"] = { "<TAB>" },
  },
}

return M
