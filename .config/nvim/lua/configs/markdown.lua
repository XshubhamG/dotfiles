require("render-markdown").setup {
  enabled = true,
  max_file_size = 20.0,
  debounce = 100,
  preset = "none", -- "obsidian", "lazy", "none"
  log_level = "error",
  log_runtime = false,
  file_types = { "markdown" },
  injections = {
    gitcommit = {
      enabled = true,
      query = [[
                ((message) @injection.content
                    (#set! injection.combined)
                    (#set! injection.include-children)
                    (#set! injection.language "markdown"))
            ]],
    },
  },
  render_modes = true, -- {'n', 'c', 't'}
  anti_conceal = {
    enabled = true,
    ignore = {
      code_background = true,
      sign = true,
    },
    -- Number of lines above cursor to show
    above = 0,
    -- Number of lines below cursor to show
    below = 0,
  },
  padding = {
    -- Highlight to use when adding whitespace, should match background
    highlight = "Normal",
  },
  latex = {
    -- Whether LaTeX should be rendered, mainly used for health check
    enabled = true,
    -- Executable used to convert latex formula to rendered unicode
    converter = "latex2text",
    -- Highlight for LaTeX blocks
    highlight = "RenderMarkdownMath",
    -- Amount of empty lines above LaTeX blocks
    top_pad = 0,
    -- Amount of empty lines below LaTeX blocks
    bottom_pad = 0,
  },
  on = {
    -- Called when plugin initially attaches to a buffer
    attach = function() end,
    -- Called after plugin renders a buffer
    render = function() end,
  },
  heading = {
    enabled = true,
    sign = false,
    position = "overlay",
    icons = { "󰼏  ", "󰼐  ", "󰼑  ", "󰼒  ", "󰼓  ", "󰼔  " },
    signs = { "󰫎 " },
    width = "block",
    left_margin = 0,
    left_pad = 0,
    right_pad = 0,
    min_width = 0,
    border = false,
    border_virtual = false,
    border_prefix = false,
    above = "▄",
    below = "▀",
    backgrounds = {
      "RenderMarkdownH1Bg",
      "RenderMarkdownH2Bg",
      "RenderMarkdownH3Bg",
      "RenderMarkdownH4Bg",
      "RenderMarkdownH5Bg",
      "RenderMarkdownH6Bg",
    },
    foregrounds = {
      "RenderMarkdownH1",
      "RenderMarkdownH2",
      "RenderMarkdownH3",
      "RenderMarkdownH4",
      "RenderMarkdownH5",
      "RenderMarkdownH6",
    },
  },
  paragraph = {
    enabled = true,
    left_margin = 0,
    min_width = 0,
  },
  code = {
    enabled = true,
    sign = true,
    style = "full",
    position = "right",
    language_pad = 0,
    language_name = true,
    disable_background = { "diff" },
    width = "block",
    left_margin = 0,
    left_pad = 2,
    right_pad = 8,
    min_width = 45,
    border = "thin",
    above = "▄",
    below = "▀",
    highlight = "RenderMarkdownCode",
    highlight_inline = "RenderMarkdownCodeInline",
    highlight_language = nil,
  },
  dash = {
    enabled = true,
    icon = "─",
    width = "full",
    highlight = "RenderMarkdownDash",
  },
  bullet = {
    enabled = true,
    icons = { "●", "◆", "◇" },
    ordered_icons = function(level, index, value)
      value = vim.trim(value)
      local value_index = tonumber(value:sub(1, #value - 1))
      return string.format("%d.", value_index > 1 and value_index or index)
    end,
    left_pad = 2,
    right_pad = 0,
    highlight = "RenderMarkdownBullet",
  },

  checkbox = {
    enabled = true,
    position = "inline",
    unchecked = {
      icon = "󰄱 ",
      highlight = "RenderMarkdownUnchecked",
      scope_highlight = nil,
    },
    checked = {
      icon = "󰱒 ",
      highlight = "RenderMarkdownChecked",
      scope_highlight = nil,
    },
    custom = {
      todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo", scope_highlight = nil },
    },
  },

  quote = {
    enabled = true,
    icon = "▋",
    repeat_linebreak = false,
    highlight = "RenderMarkdownQuote",
  },

  pipe_table = {
    enabled = true,
    preset = "round",
    style = "full",
    cell = "padded",
    padding = 1,
    min_width = 0,
    border = {
      "┌",
      "┬",
      "┐",
      "├",
      "┼",
      "┤",
      "└",
      "┴",
      "┘",
      "│",
      "─",
    },
    alignment_indicator = "━",
    head = "RenderMarkdownTableHead",
    row = "RenderMarkdownTableRow",
    filler = "RenderMarkdownTableFill",
  },

  callout = {
    note = { raw = "[!NOTE]", rendered = "󰋽 Note", highlight = "RenderMarkdownInfo" },
    tip = { raw = "[!TIP]", rendered = "󰌶 Tip", highlight = "RenderMarkdownSuccess" },
    important = { raw = "[!IMPORTANT]", rendered = "󰅾 Important", highlight = "RenderMarkdownHint" },
    warning = { raw = "[!WARNING]", rendered = "󰀪 Warning", highlight = "RenderMarkdownWarn" },
    caution = { raw = "[!CAUTION]", rendered = "󰳦 Caution", highlight = "RenderMarkdownError" },
    -- Obsidian: https://help.obsidian.md/Editing+and+formatting/Callouts
    abstract = { raw = "[!ABSTRACT]", rendered = "󰨸 Abstract", highlight = "RenderMarkdownInfo" },
    summary = { raw = "[!SUMMARY]", rendered = "󰨸 Summary", highlight = "RenderMarkdownInfo" },
    tldr = { raw = "[!TLDR]", rendered = "󰨸 Tldr", highlight = "RenderMarkdownInfo" },
    info = { raw = "[!INFO]", rendered = "󰋽 Info", highlight = "RenderMarkdownInfo" },
    todo = { raw = "[!TODO]", rendered = "󰗡 Todo", highlight = "RenderMarkdownInfo" },
    hint = { raw = "[!HINT]", rendered = "󰌶 Hint", highlight = "RenderMarkdownSuccess" },
    success = { raw = "[!SUCCESS]", rendered = "󰄬 Success", highlight = "RenderMarkdownSuccess" },
    check = { raw = "[!CHECK]", rendered = "󰄬 Check", highlight = "RenderMarkdownSuccess" },
    done = { raw = "[!DONE]", rendered = "󰄬 Done", highlight = "RenderMarkdownSuccess" },
    question = { raw = "[!QUESTION]", rendered = "󰘥 Question", highlight = "RenderMarkdownWarn" },
    help = { raw = "[!HELP]", rendered = "󰘥 Help", highlight = "RenderMarkdownWarn" },
    faq = { raw = "[!FAQ]", rendered = "󰘥 Faq", highlight = "RenderMarkdownWarn" },
    attention = { raw = "[!ATTENTION]", rendered = "󰀪 Attention", highlight = "RenderMarkdownWarn" },
    failure = { raw = "[!FAILURE]", rendered = "󰅖 Failure", highlight = "RenderMarkdownError" },
    fail = { raw = "[!FAIL]", rendered = "󰅖 Fail", highlight = "RenderMarkdownError" },
    missing = { raw = "[!MISSING]", rendered = "󰅖 Missing", highlight = "RenderMarkdownError" },
    danger = { raw = "[!DANGER]", rendered = "󱐌 Danger", highlight = "RenderMarkdownError" },
    error = { raw = "[!ERROR]", rendered = "󱐌 Error", highlight = "RenderMarkdownError" },
    bug = { raw = "[!BUG]", rendered = "󰨰 Bug", highlight = "RenderMarkdownError" },
    example = { raw = "[!EXAMPLE]", rendered = "󰉹 Example", highlight = "RenderMarkdownHint" },
    quote = { raw = "[!QUOTE]", rendered = "󱆨 Quote", highlight = "RenderMarkdownQuote" },
    cite = { raw = "[!CITE]", rendered = "󱆨 Cite", highlight = "RenderMarkdownQuote" },
  },

  link = {
    enabled = true,
    footnote = {
      superscript = true,
      prefix = "",
      suffix = "",
    },
    image = "󰥶 ",
    email = "󰀓 ",
    hyperlink = "󰌹 ",
    highlight = "RenderMarkdownLink",
    wiki = { icon = "󱗖 ", highlight = "RenderMarkdownWikiLink" },
    custom = {
      web = { pattern = "^http", icon = "󰖟 " },
      youtube = { pattern = "youtube%.com", icon = "󰗃 " },
      github = { pattern = "github%.com", icon = "󰊤 " },
      neovim = { pattern = "neovim%.io", icon = " " },
      stackoverflow = { pattern = "stackoverflow%.com", icon = "󰓌 " },
      discord = { pattern = "discord%.com", icon = "󰙯 " },
      reddit = { pattern = "reddit%.com", icon = "󰑍 " },
    },
  },

  sign = {
    enabled = true,
    highlight = "RenderMarkdownSign",
  },

  inline_highlight = {
    enabled = true,
    highlight = "RenderMarkdownInlineHighlight",
  },

  indent = {
    enabled = false,
    per_level = 2,
    skip_level = 1,
    skip_heading = false,
  },

  html = {
    enabled = true,
    comment = {
      conceal = true,
      text = nil,
      highlight = "RenderMarkdownHtmlComment",
    },
  },

  win_options = {
    conceallevel = {
      default = vim.api.nvim_get_option_value("conceallevel", {}),
      rendered = 3,
    },
    concealcursor = {
      default = vim.api.nvim_get_option_value("concealcursor", {}),
      rendered = "",
    },
  },

  overrides = {
    buftype = {
      nofile = {
        padding = { highlight = "NormalFloat" },
        sign = { enabled = false },
      },
    },
    filetype = {},
  },

  custom_handlers = {},
}
