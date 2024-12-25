-- RenderMarkdown highlights

vim.api.nvim_set_hl(
  0,
  "RenderMarkdownH1Bg",
  { fg = "#89b4fa", bg = "#313244", sp = "#89b4fa", bold = true, underline = true }
)

vim.api.nvim_set_hl(
  0,
  "RenderMarkdownH2Bg",
  { fg = "#f38ba8", bg = "#313244", sp = "#f38ba8", bold = true, underline = true }
)

vim.api.nvim_set_hl(
  0,
  "RenderMarkdownH3Bg",
  { fg = "#a6e3a1", bg = "#313244", sp = "#a6e3a1", bold = true, underline = true }
)

vim.api.nvim_set_hl(
  0,
  "RenderMarkdownH4Bg",
  { fg = "#f9e2af", bg = "#313244", sp = "#f9e2af", bold = true, underline = true }
)

vim.api.nvim_set_hl(
  0,
  "RenderMarkdownH5Bg",
  { fg = "#cba6f7", bg = "#313244", sp = "#cba6f7", bold = true, underline = true }
)

vim.api.nvim_set_hl(
  0,
  "RenderMarkdownH6Bg",
  { fg = "#fab387", bg = "#313244", sp = "#fab387", bold = true, underline = true }
)

vim.api.nvim_set_hl(0, "RenderMarkdownBullet", { fg = "#94e2d5", bg = "#313244" })
vim.api.nvim_set_hl(0, "RenderMarkdownInlineHighlight", { fg = "#a6e3a1" })
vim.api.nvim_set_hl(0, "RenderMarkdownChecked", { fg = "#a6e3a1" })

-- italic and bold highlights
vim.api.nvim_set_hl(0, "@markup.italic", { italic = true, fg = "#f38ba8", bg = "#313244" })
vim.api.nvim_set_hl(0, "@markup.strong", { bold = true, fg = "#94e2d5", bg = "#313244" })
