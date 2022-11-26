-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme = "oceanic-next",
}
M.mappings = require "custom.mappings"
M.plugins = require "custom.plugins"

return M
