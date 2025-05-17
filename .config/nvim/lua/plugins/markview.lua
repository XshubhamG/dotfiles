return {
  "OXY2DEV/markview.nvim",
  ft = { "markdown" },
  dependencies = {
    "saghen/blink.cmp",
  },
  config = function()
    local presets = require("markview.presets")

    require("markview").setup({
      markdown = {
        headings = presets.headings.arrowed,
        horizontal_rules = presets.horizontal_rules.thick,
        code_blocks = {
          enable = true,

          style = "simple",

          label_direction = "right",

          border_hl = "MarkviewCode",
          info_hl = "MarkviewCodeInfo",

          min_width = 60,
          pad_amount = 2,
          pad_char = " ",

          sign = true,

          default = {
            block_hl = "MarkviewCode",
            pad_hl = "MarkviewCode",
          },

          ["diff"] = {
            block_hl = function(_, line)
              if line:match("^%+") then
                return "MarkviewPalette4"
              elseif line:match("^%-") then
                return "MarkviewPalette1"
              else
                return "MarkviewCode"
              end
            end,
            pad_hl = "MarkviewCode",
          },
        },
      },

      preview = {
        icon_provider = "mini",
        modes = { "n", "no", "c" },
      },
    })
    require("markview.extras.checkboxes").setup()
  end,
}
