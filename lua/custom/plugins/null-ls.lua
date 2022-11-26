local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Python
  b.formatting.black,
  b.formatting.isort,
  b.diagnostics.flake8,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt.with { filetypes = {"sh", "zsh"} },
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- Markdown
  b.formatting.markdownlint,
}

null_ls.setup {
  debug = false,
  sources = sources,
}
