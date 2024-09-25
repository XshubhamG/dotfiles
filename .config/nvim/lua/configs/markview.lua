local markview = require "markview"
local heading_presets = require("markview.presets").headings
local hl_presets = require("markview.presets").highlight_groups

markview.setup {
  buf_ignore = { "nofile" },
  modes = { "n", "i", "c", "v", "no" },

  hybrid_modes = { "i" },

  -- Returns the conceallevel to the global value when changing modes
  restore_conceallevel = true,
  -- Returns the concealcursor to the global value when changing modes
  restore_concealcursor = false,

  -- code block
  code_blocks = {
    enable = true,
    style = "language",
    hl = "dark",
    language_direction = "right",
    language_names = {
      { "ts", "typescript" },
      { "js", "javascript" },
    },
    min_width = 70,
    pad_amount = 2,
    pad_char = " ",
    position = "inline",
    sign = true,
  },

  highlight_groups = hl_presets.h_decorated,
  headings = heading_presets.decorated_labels,
}
