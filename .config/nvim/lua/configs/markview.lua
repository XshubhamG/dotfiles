local markview = require "markview"
local presets = require "markview.presets"
markview.setup {
  buf_ignore = { "nofile" },
  modes = { "n", "i", "c", "v", "no" },

  hybrid_modes = { "i" },

  -- This is nice to have
  callbacks = {
    on_enable = function(_, win)
      vim.wo[win].conceallevel = 2
      vim.wo[win].concealcursor = "nc"
    end,
  },

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

  headings = presets.headings.glow_labels,
}
