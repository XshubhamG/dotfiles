local markview = require "markview"
local presets = require "markview.presets"

markview.setup {

  buf_ignore = { "nofile" },
  modes = { "n", "i", "c", "v", "no" },

  hybrid_modes = { "i" },

  code_blocks = {
    enable = true,
    ---
    ---@type "devicons" | "mini" | "internal" | ""
    icons = "internal",

    ---@type "simple" | "minimal" | "language"
    style = "language",

    ---@type string
    hl = "MarkviewCodeBlock",

    ---@type string
    info_hl = "MarkviewCodeInfo",

    --- Minimum width of a code block.
    ---@type integer
    min_width = 70,

    --- Left & right padding amount
    ---@type integer
    pad_amount = 3,

    --- Character to use as whitespace
    ---@type string?
    pad_char = " ",

    --- Table containing various code block language names
    ---@type { [string]: string }
    language_names = {
      { "ts", "typescript" },
      { "js", "javascript" },
    },

    --- Direction of the language preview
    ---@type "left" | "right"
    language_direction = "right",

    --- Enables signs
    ---@type boolean
    sign = true,

    --- Highlight group for the sign
    ---@type string?
    sign_hl = nil,
  },

  headings = presets.headings.simple,
  checkboxes = presets.checkboxes.nerd,
}
