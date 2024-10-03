---@type ChadrcConfig

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
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },
}

M.lsp = { signature = true }

M.cheatsheet = {
  theme = "grid", -- simple/grid
  excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
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
  },
}

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

M.base46 = {
  theme = "catppuccin",

  integrations = {
    "notify",
    "todo",
    "bufferline",
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    ["@keyword"] = { italic = true },
    ["@operator"] = { italic = true },
  },
}

M.nvdash = {
  load_on_startup = true,

  header = {
    -- "                            ",
    -- "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
    -- "   ▄▀███▄     ▄██ █████▀    ",
    -- "   ██▄▀███▄   ███           ",
    -- "   ███  ▀███▄ ███           ",
    -- "   ███    ▀██ ███           ",
    -- "   ███      ▀ ███           ",
    -- "   ▀██ █████▄▀█▀▄██████▄    ",
    -- "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
    -- "                            ",
    -- "     Powered By  eovim    ",
    -- "                            ",
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

return M
