local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    markdown = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    astro = { "prettier" },
    vue = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    sh = { "beautysh" },
    zsh = { "beautysh" },
    bash = { "beautysh" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    python = { "black" },
    php = { "php-cs-fixer" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
