return {
  -- NOTE: conform.nvim
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- NOTE: nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  --NOTE: nvim-cmp
  {
    "hrsh7th/nvim-cmp", -- Required
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer", -- buffer completions
      "hrsh7th/cmp-path", -- path completions
      "hrsh7th/cmp-cmdline", -- cmdline completions
      "hrsh7th/vim-vsnip",
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip", -- snippet completions
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets", -- a bunch of snippets to use
    },
    opts = function()
      return require "configs.cmp"
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "cmp")
      local cmp = require "cmp"
      require("luasnip/loaders/from_vscode").lazy_load()

      cmp.setup(opts)

      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
        view = {
          entries = { name = "custom", selection_order = "near_cursor" },
        },
      })

      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources {
          { name = "path" },
          { name = "cmdline" },
        },
        view = {
          entries = { name = "custom", selection_order = "near_cursor" },
        },
      })
    end,
  },

  -- NOTE: Mason
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
    opts = {},
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

  -- NOTE: mason-lspconfig
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
    dependencies = { "nvim-treesitter/playground" },
    event = { "BufReadPost", "BufNewFile" },
    opts = function()
      return require "configs.treesitter"
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "treesitter")
      require("nvim-treesitter.configs").setup(opts)
    end,
  },

  -- NOTE: noice.nvim
  {
    "folke/noice.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify", "neovim/nvim-lspconfig" },
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

  --NOTE: hyperland syntax highlighting
  {
    "theRealCarneiro/hyprland-vim-syntax",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = "hypr",
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

  -- NOTE: precognition.nvim

  {
    "tris203/precognition.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require("precognition").setup(opts)
    end,
  },

  --NOTE: helpview.nvim
  {
    "OXY2DEV/helpview.nvim",
    lazy = false, -- Recommended
    ft = "help",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },

  -- NOTE: markview.nvim
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      return require "configs.markview"
    end,
  },

  -- NOTE: mini.ai
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    config = function()
      require("mini.ai").setup()
    end,
  },

  -- NOTE: lazygit
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  -- NOTE: colorizer
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPost",
    opts = function()
      return require "configs.colorizer"
    end,
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup {
        chunk = {
          enable = true,
        },
        line_num = {
          enable = true,
        },
        blank = {
          enable = true,
        },
      }
    end,
  },
}
