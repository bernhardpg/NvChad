local st_modules = require "nvchad_ui.statusline.modules"

local function nvim_navic()
  local navic = require "nvim-navic"

  if navic.is_available() then
    return navic.get_location()
  else
    return " "
  end
end

return {
  -- TODO Uncomment this to add navic to statusline
  -- LSP_progress = function()
  --   return st_modules.LSP_progress() .. nvim_navic()
  -- end,
  -- LSP_Diagnostics = function()
  --   return ""
  -- end,
  -- LSP_status = function()
  --   return ""
  -- end,
}
