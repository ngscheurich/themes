-- Based on Tomorrow (https://github.com/chriskempson/tomorrow-theme)

local palette = {
  -- stylua: ignore start
  rosewater = "#5d3a2c",
  flamingo  = "#5b3540",
  pink      = "#6a386c",
  mauve     = "#682944",
  red       = "#7f1e23",
  maroon    = "#81341d",
  peach     = "#9a4a1f",
  yellow    = "#765109",
  green     = "#595f2d",
  teal      = "#466535",
  sky       = "#2f665f",
  sapphire  = "#3f6767",
  blue      = "#3869a2",
  lavender  = "#685585",

  text      = "#383841",
  subtext1  = "#454453",
  subtext0  = "#57575e",

  overlay2  = "#807f87",
  overlay1  = "#908f95",
  overlay0  = "#a0a0a4",

  surface2  = "#b0b0b2",
  surface1  = "#c0c0c0",
  surface0  = "#d0d0ce",

  base      = "#f3f1e9",

  mantle    = "#eae9e3",
  crust     = "#e0e0dc",
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
