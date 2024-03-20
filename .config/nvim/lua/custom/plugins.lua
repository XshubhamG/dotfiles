local overrides = require "custom.configs.overrides"
local plugins = {
  -- NOTE: overrides for plugins

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- NOTE: noice.nvim
  {
    "folke/noice.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
    config = function()
      require "custom.configs.noice"
    end,
  },

  -- NOTE: todo-comments.nvim
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        info = { "DiagnosticInfo", "#49fc03" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" },
      },
    },
    config = function()
      local todoComment = require "todo-comments"
      todoComment.setup()
    end,
  },

  -- NOTE: lspconfig.nvim
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  --NOTE: hyperland syntax highlighting
  {
    "theRealCarneiro/hyprland-vim-syntax",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = "hypr",
  },

  --NOTE: none-ls for formatting
  {
    "nvimtools/none-ls.nvim", -- configure formatters & linters
    event = "VeryLazy",
    dependencies = { "jay-babu/mason-null-ls.nvim" },
    config = function()
      require "custom.configs.null-ls"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "javscript", "typescript", "javascriptreact", "typescriptreact", "html" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
}

return plugins
