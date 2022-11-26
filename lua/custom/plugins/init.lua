return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        -- lua
        "lua-language-server",
        "stylua",

        -- python
        "pyright",
        "isort",
        "black",
        "flake8",
        "autoflake",

        -- vim
        "vim-language-server",

        -- shell
        "shfmt",
        "shellcheck",

        -- bash
        "bash-language-server",
      },
    },
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  
  ["tpope/vim-fugitive"] = {},

  ["lewis6991/gitsigns.nvim"] = {},
}
