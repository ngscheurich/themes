-- Based on Tomorrow Night (https://github.com/chriskempson/tomorrow-theme)

local palette = {
  -- stylua: ignore start
  rosewater = "#ab7e8a",
  flamingo  = "#c49f91",
  pink      = "#c094c2",
  mauve     = "#bd6d8f",
  red       = "#d46269",
  maroon    = "#d57d62",
  peach     = "#de9974",
  yellow    = "#f0c674",
  green     = "#b5bd82",
  teal      = "#9fbd8f",
  sky       = "#87c1b9",
  sapphire  = "#7ea8a7",
  blue      = "#81acd9",
  lavender  = "#b3a7db",

  text      = "#ced6ec",
  subtext1  = "#bcc3d5",
  subtext0  = "#a8aebf",

  overlay2  = "#969ba8",
  overlay1  = "#838791",
  overlay0  = "#70727b",

  surface2  = "#5b5d66",
  surface1  = "#474951",
  surface0  = "#33333b",

  base      = "#1f1f26",

  mantle    = "#19191d",
  crust     = "#121213",
  -- stylua: ignore end
}

return {
  name = "cortado",
  colorscheme = "catppuccin",

  apply = function(setup)
    setup({
      color_overrides = { mocha = palette },
      integrations = { aerial = true, blink_cmp = true },
    })

    vim.cmd.colorscheme("catppuccin-mocha")
    vim.cmd.hi("FloatBorder guifg=" .. palette.surface2)
    vim.cmd.hi("SnacksPicker guibg=" .. palette.base)
    vim.cmd.hi(string.format("SnacksPickerBorder guifg=%s guibg=%s", palette.surface2, palette.base))
    vim.cmd.hi("NormalAlt guibg=" .. palette.mantle)
  end,
}
