return {
  defaults = { lazy = true },
  install = { colorscheme = { "nvchad" } },

  ui = {
    title = " Lazy Nvim",

    icons = {
      cmd = "  ", ---+ ##code##
      config = "  ",
      event = "  ",
      ft = "  ",
      init = "  ",
      imports = "  ",
      keys = "  ",
      lazy = " ",
      plugin = "  ",
      runtime = "  ",
      require = "  ",
      source = " ",
      start = "",
      task = "  ", ---
    },
  },

  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
      },
    },
  },
}
