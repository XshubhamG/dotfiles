require("markview").setup {

  buf_ignore = { "nofile" },
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

  -- block quotes
  block_quotes = {
    enable = true,
    default = { border = "▋", hl = "green" },

    callouts = {
      {
        match_string = "SUCCESS",
        aliases = { "CHECK", "DONE" },

        border = "▋",
        border_hl = "green",

        callout_preview = "✓ Success",
        callout_preview_hl = "green",

        custom_title = true,
        custom_icon = "✓ ",
      },
    },
  },

  checkboxes = {
    enable = true,

    checked = {
      text = "✔",
      hl = "green",
    },
    unchecked = {
      text = "✖",
      hl = "red",
    },
  },
}
