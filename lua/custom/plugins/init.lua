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

        -- markdown
        "marksman",
        "markdownlint"
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

  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },

  ["SmiteshP/nvim-navic"] = {
    requires = "neovim/nvim-lspconfig",
  },
}
