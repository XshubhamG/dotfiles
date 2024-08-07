require("markview").setup {

  buf_ignore = {},
  modes = { "n", "v", "i" },

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
    language_names = {},
    min_width = 70,
    pad_amount = 2,
    pad_char = " ",
    position = "inline",
    sign = true,
  },
}
