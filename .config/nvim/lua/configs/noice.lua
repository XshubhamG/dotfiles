return {
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
    hover = {
      enabled = true,
    },
    signature = {
      enabled = true,
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = true, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = true, -- add a border to hover docs and signature help
  },
  -- require("telescope").load_extension "noice",
  -- views = {
  --   popupmenu = {
  --     relative = "editor",
  --     backend = "nui",
  --     position = {
  --       row = 16,
  --       col = "50%",
  --     },
  --     size = {
  --       width = 60,
  --       height = 10,
  --     },
  --     border = {
  --       style = "rounded",
  --       padding = { 0, 1 },
  --     },
  --     win_options = {
  --       winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
  --     },
  --   },
  -- },noic
}
