local markview = require "markview"

markview.setup {
  buf_ignore = { "nofile" },
  modes = { "n", "i", "c", "v", "no" },

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

  headings = {
    enable = true,
    shift_width = 1,

    heading_1 = {
      style = "icon",
      icon = require("configs.icons").kind.Constructor .. " ",
      hl = "MarkviewCol1",
    },
    heading_2 = {
      style = "icon",
      icon = require("configs.icons").ui.List .. " ",
      hl = "MarkviewCol2",
    },
    heading_3 = {
      style = "icon",
      icon = require("configs.icons").ui.Target .. " ",
      hl = "MarkviewCol3",
    },
    heading_4 = {
      style = "icon",
      icon = require("configs.icons").misc.Robot .. " ",
      hl = "MarkviewCol4",
    },
    heading_5 = {
      style = "icon",
      icon = require("configs.icons").ui.BoxChecked .. " ",
      hl = "MarkviewCol5",
    },
    heading_6 = {
      style = "icon",
      icon = require("configs.icons").ui.BookMark .. " ",
      hl = "MarkviewCol6",
    },
  },

  highlight_groups = {
    {
      group_name = "Col1",
      value = function()
        local bg = markview.colors.get_hl_value(0, "Normal", "bg") or markview.colors.get_hl_value(0, "Cursor", "fg")
        local fg = markview.colors.get_hl_value(0, "markdownH1", "fg") or "#f38ba8"

        return {
          bg = markview.colors.mix(bg, fg, 0.7, 0.25),
          fg = fg,
        }
      end,
    },
    {
      group_name = "Col1Fg",
      value = function()
        local fg = markview.colors.get_hl_value(0, "markdownH1", "fg") or "#f38ba8"

        return {
          fg = fg,
        }
      end,
    },

    {
      group_name = "Col2",
      value = function()
        local bg = markview.colors.get_hl_value(0, "Normal", "bg") or markview.colors.get_hl_value(0, "Cursor", "fg")
        local fg = markview.colors.get_hl_value(0, "markdownH2", "fg") or "#fab387"

        return {
          bg = markview.colors.mix(bg, fg, 0.7, 0.25),
          fg = fg,
        }
      end,
    },
    {
      group_name = "Col2Fg",
      value = function()
        local fg = markview.colors.get_hl_value(0, "markdownH2", "fg") or "#fab387"

        return {
          fg = fg,
        }
      end,
    },

    {
      group_name = "Col3",
      value = function()
        local bg = markview.colors.get_hl_value(0, "Normal", "bg") or markview.colors.get_hl_value(0, "Cursor", "fg")
        local fg = markview.colors.get_hl_value(0, "markdownH3", "fg") or "#f9e2af"

        return {
          bg = markview.colors.mix(bg, fg, 0.7, 0.25),
          fg = fg,
        }
      end,
    },
    {
      group_name = "Col3Fg",
      value = function()
        local fg = markview.colors.get_hl_value(0, "markdownH3", "fg") or "#f9e2af"

        return {
          fg = fg,
        }
      end,
    },

    {
      group_name = "Col4",
      value = function()
        local bg = markview.colors.get_hl_value(0, "Normal", "bg") or markview.colors.get_hl_value(0, "Cursor", "fg")
        local fg = markview.colors.get_hl_value(0, "markdownH4", "fg") or "#a6e3a1"

        return {
          bg = markview.colors.mix(bg, fg, 0.7, 0.25),
          fg = fg,
        }
      end,
    },
    {
      group_name = "Col4Fg",
      value = function()
        local fg = markview.colors.get_hl_value(0, "markdownH4", "fg") or "#a6e3a1"

        return {
          fg = fg,
        }
      end,
    },

    {
      group_name = "Col5",
      value = function()
        local bg = markview.colors.get_hl_value(0, "Normal", "bg") or markview.colors.get_hl_value(0, "Cursor", "fg")
        local fg = markview.colors.get_hl_value(0, "markdownH5", "fg") or "#74c7ec"

        return {
          bg = markview.colors.mix(bg, fg, 0.7, 0.25),
          fg = fg,
        }
      end,
    },
    {
      group_name = "Col5Fg",
      value = function()
        local fg = markview.colors.get_hl_value(0, "markdownH5", "fg") or "#74c7ec"

        return {
          fg = fg,
        }
      end,
    },

    {
      group_name = "Col6",
      value = function()
        local bg = markview.colors.get_hl_value(0, "Normal", "bg") or markview.colors.get_hl_value(0, "Cursor", "fg")
        local fg = markview.colors.get_hl_value(0, "markdownH6", "fg") or "#b4befe"

        return {
          bg = markview.colors.mix(bg, fg, 0.7, 0.25),
          fg = fg,
        }
      end,
    },
    {
      group_name = "Col6Fg",
      value = function()
        local fg = markview.colors.get_hl_value(0, "markdownH6", "fg") or "#b4befe"

        return {
          fg = fg,
        }
      end,
    },

    {
      group_name = "Col7",
      value = function()
        local bg = markview.colors.get_hl_value(0, "Normal", "bg") or markview.colors.get_hl_value(0, "Cursor", "fg")
        local fg = markview.colors.get_hl_value(0, "Comment", "fg")

        return {
          bg = markview.colors.mix(bg, fg, 0.7, 0.25),
          fg = fg,
        }
      end,
    },
    {
      group_name = "Col7Fg",
      value = function()
        local fg = markview.colors.get_hl_value(0, "Comment", "fg")

        return {
          fg = fg,
        }
      end,
    },

    {
      group_name = "Layer",
      value = function()
        local bg = markview.colors.get_hl_value(0, "Normal", "bg") or markview.colors.get_hl_value(0, "Cursor", "fg")
        local fg = markview.colors.get_hl_value(0, "Comment", "fg")

        local txt = markview.colors.get_hl_value(0, "FloatTitle", "fg")

        return {
          bg = markview.colors.mix(bg, fg, 1, 0.20),
          fg = txt,
        }
      end,
    },
    {
      group_name = "Layer2",
      value = function()
        local bg = markview.colors.get_hl_value(0, "Normal", "bg") or markview.colors.get_hl_value(0, "Cursor", "fg")
        local fg = markview.colors.get_hl_value(0, "Comment", "fg")

        return {
          bg = markview.colors.mix(bg, fg, 0.85, 0.13),
        }
      end,
    },
    {
      output = function()
        return markview.colors.create_gradient(
          "Gradient",
          markview.colors.get_hl_value(0, "Normal", "bg") or markview.colors.get_hl_value(0, "Cursor", "fg"),
          markview.colors.get_hl_value(0, "Title", "fg"),
          10,
          "fg"
        )
      end,
    },
  },
}
