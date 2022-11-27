return {
  -- LSP
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- Manager for installing linters and diagnosers
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

        -- Julia
        "julia-lsp",

        -- vim
        "vim-language-server",

        -- shell
        "shfmt",
        "shellcheck",

        -- bash
        "bash-language-server",

        -- markdown
        "marksman",
        "markdownlint",
      },
    },
  },

  -- Linting and diagnosing
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- Git integration
  ["tpope/vim-fugitive"] = {},

  -- Breadcrumbs for bar
  ["SmiteshP/nvim-navic"] = {
    module = "nvim-navic",
    config = function()
      require "custom.plugins.nvim-navic"
    end,
  },

  -- Customize status line
  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "round",
        overriden_modules = function()
          return require "custom.plugins.statusline"
        end,
      },
    },
  },

  -- Report of errors and warnings
  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end,
  },
}
