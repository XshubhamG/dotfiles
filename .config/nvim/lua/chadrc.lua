--@type ChadrcConfig

local M = {}


M.ui = {

  cmp = {
    icons = true,
    lspkind_text = true,
    icons_left = true,
    format_colors = {
      tailwind = true,
      icon = "󱓻",
    },
    style = "default",            -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg",     -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },


  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },

  telescope = {
    style = "bordered",
  },

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
  },

  lsp = {
    signature = {
      silent = false,
    },
  },
}

M.mason = {
  pkgs = {

    -- lua
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "tailwindcss-language-server",
    "prettier",
    "typescript-language-server",

    -- python
    "black",

    -- go
    "gopls",
    "golangci-lint",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- shell stuff
    "shfmt",
  }
}

M.nvdash = {
  load_on_startup = true,
  header = {
    [[                                                                       ]],
    [[                                                                       ]],
    [[                                                                       ]],
    [[                                                                       ]],
    [[                                                                     ]],
    [[       ████ ██████           █████      ██                     ]],
    [[      ███████████             █████                             ]],
    [[      █████████ ███████████████████ ███   ███████████   ]],
    [[     █████████  ███    █████████████ █████ ██████████████   ]],
    [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
    [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
    [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
    [[                                                                       ]],
    [[                                                                       ]],
    [[                                                                       ]],
  },
}

M.base46 = {
  integrations = {
    "notify",
    "todo",
    "bufferline",
  },

  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    ["@keyword"] = { italic = true },
    ["@operator"] = { italic = true },
  },
}

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",

  highlight = {
    hex = true,
    lspvars = true,
  },
}

M.lsp = { signature = true }

return M
