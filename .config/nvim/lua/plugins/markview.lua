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
        headings = presets.headings.slanted,
        horizontal_rules = presets.horizontal_rules.thick,
        code_blocks = {
          enable = true,
          style = "simple",
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
