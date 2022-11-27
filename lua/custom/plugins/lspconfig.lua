local on_attach_base = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

-- Navic must be attached to lspconfig to work:
-- this extends the on-attach function with navics attach function
local navic = require("nvim-navic")
local on_attach = function(client, bufnr)
  on_attach_base(client, bufnr)
  navic.attach(client, bufnr)
end

local lspconfig = require "lspconfig"
local servers = { "pyright", "vimls", "sumneko_lua", "bashls", "marksman", "julials" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Make bashls also detect zsh files
lspconfig["bashls"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "sh", "bash", "zsh" },
}
