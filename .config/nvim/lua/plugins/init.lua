return {

  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
    opts = function()
      return require "configs.mason"
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "mason")
      require("mason").setup(opts)

      -- custom nvchad cmd to install all mason binaries listed
      vim.api.nvim_create_user_command("MasonInstallAll", function()
        if opts.ensure_installed and #opts.ensure_installed > 0 then
          vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
        end
      end, {})

      vim.g.mason_binaries_list = opts.ensure_installed
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },

  --NOTE: nvim-treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      return require "configs.treesitter"
    end,
  },

  --NOTE: nvim-tree.nvim
  {
    "nvim-tree/nvim-tree.lua",
    opts = {},
  },

  --NOTE: nvim-colorizer.nvim
  {
    "NvChad/nvim-colorizer.lua",
    opts = function()
      return require "configs.colorizer"
    end,
  },

  -- NOTE: noice.nvim
  {
    "folke/noice.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
    config = function()
      require "configs.noice"
    end,
  },

  -- NOTE: todo-comments.nvim
  {
    "folke/todo-comments.nvim",
    event = "BufReadPost",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "configs.todo"
    end,
  },

  -- NOTE: lspconfig.nvim
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
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
      require "configs.null-ls"
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

  -- NOTE: precognition.nvim

  {
    "tris203/precognition.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require("precognition").setup(opts)
    end,
  },
}
