---@type ChadrcConfig

local M = {}

M.ui = {
  theme = "catppuccin",
  extended_integrations = {
    "notify",
  },

  cmp = {
    style = "flat_dark", -- default/flat_light/flat_dark/atom/atom_colored
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

  nvdash = {
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
  },
}
M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"
return M
