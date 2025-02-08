-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
local nvlsp = require "nvchad.configs.lspconfig"

-- lsp servers
local servers = {
  astro = {},
  html = {},
  ts_ls = {},
  tailwindcss = {},
  clangd = {},
  gopls = {},
  pyright = {},
  intelephense = {},
  hyprls = {},

  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },
}

for name, opts in pairs(servers) do
  opts.on_init = nvlsp.on_init
  opts.on_attach = nvlsp.on_attach
  opts.capabilities = nvlsp.capabilities

  require("lspconfig")[name].setup(opts)
end
