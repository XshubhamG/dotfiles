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
  {
    "NvChad/nvim-colorizer.lua",
    opts = overrides.colorizer,
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
    event = "BufReadPost",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "custom.configs.todo"
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

  -- NOTE: nvim-ts-autotag
  {
    "windwp/nvim-ts-autotag",
    ft = { "javscript", "typescript", "javascriptreact", "typescriptreact", "html" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- NOTE: codeium
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },

  -- NOTE: tmux
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- NOTE: telescope-file-browser
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require "custom.configs.tele_fileBrowser"
    end,
  },

  -- NOTE: barbaecue nvim
  {
    "utilyre/barbecue.nvim",
    event = "VeryLazy",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {},
    config = function(_, opts)
      require("barbecue").setup(opts)
    end,
  },
}

return plugins
