local options = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "tailwindcss-language-server",
    "prettier",
    "typescript-language-server",

    -- python
    "black",

    -- go
    "gopls",
    "golangci-lint",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- shell stuff
    "shfmt",
  },
}

return options
