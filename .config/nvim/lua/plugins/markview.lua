return {
  "OXY2DEV/markview.nvim",
  lazy = false,

  dependencies = { "saghen/blink.cmp" },

  config = function()
    require("markview").setup({
      ---@type markview.config
      {
        experimental = {
          date_formats = {},
          date_time_formats = {},

          file_open_command = nil,

          list_empty_line_tolerance = nil,

          prefer_nvim = true,
          read_chunk_size = nil,

          linewise_ignore_org_indent = false,
        },

        html = {
          enable = true,

          container_elements = {},
          headings = {},
          void_elements = {},
        },

        latex = {
          enable = nil,

          blocks = {},
          inlines = {},

          commands = {},
          escapes = {},
          parenthesis = {},

          fonts = {},
          subscripts = {},
          superscripts = {},
          symbols = {},
          texts = {},
        },

        markdown = {
          enable = true,

          block_quoutes = {},
          code_blocks = {},
          headings = {},
          horizontal_rules = {},
          list_items = {},
          tables = {},

          metadata_plus = {},
          metadata_minus = {},

          reference_definitions = {},
        },
        markdown_inline = {
          enable = true,

          block_references = {},
          checkboxes = {},
          emails = {},
          footnotes = {},
          hyperlinks = {},
          images = {},
          inline_codes = {},
          uri_autolinks = {},

          embed_files = {},
          highlights = {},
          internal_links = {},

          entities = {},
          emoji_shorthands = {},

          escapes = {},
        },

        preview = {
          enable = true,
          map_gx = true,

          callbacks = {},

          filetypes = {},
          ignore_buftypes = {},
          ignore_previews = {},

          debounce = nil,
          icon_provider = "internal",
          max_buf_lines = 100,

          modes = {},
          hybrid_modes = {},
          linewise_hybrid_mode = nil,

          draw_range = {},
          edit_range = {},

          splitview_winopts = {},
        },

        typst = {
          enable = nil,

          code_blocks = {},
          code_spans = {},

          escapes = {},
          symbols = {},

          headings = {},
          labels = {},
          list_items = {},

          math_blocks = {},
          math_spans = {},

          raw_blocks = {},
          raw_spans = {},

          reference_links = {},
          terms = {},
          url_links = {},

          subscripts = {},
          superscripts = {},
        },

        yaml = {
          enable = nil,

          properties = {},
        },
      },
    })
  end,
}
