local M = {}

M.general = {
  i = {
    -- Remap <Esc> to jj
    ["jj"] = { "<ESC>", "Esc key" },
  }
}

M.trouble = {
  n = {
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", "Toggle Trouble pane" },
    ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Toggle Trouble pane" },
    ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", "Toggle Trouble pane" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", "Toggle Trouble pane" },
    ["<leader>xl"] = { "<cmd>TroubleToggle toclist<cr>", "Toggle Trouble pane" },
    ["gR"] = { "<cmd>TroubleToggle lsp_references<cr>", "Toggle Trouble pane" },
  },
}

M.nvterm = {
  plugin = true,
  n = {
    -- toggle in normal mode
    ["<C-k>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle floating term",
    },
  },

  t = {
    -- toggle in terminal mode
    ["<C-k>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle floating term",
    },
    ["<TAB>"] = { "<TAB>" },
  },
}

return M
