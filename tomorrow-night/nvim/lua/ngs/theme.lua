-- Based on Tomorrow Night (https://github.com/chriskempson/tomorrow-theme)

local palette = {
  -- stylua: ignore start
  rosewater = "#ab7e8a",
  flamingo  = "#a3685a",
  pink      = "#b294bb",
  mauve     = "#c07d90",
  red       = "#cc6566",
  maroon    = "#d57d62",
  peach     = "#de935f",
  yellow    = "#f0c674",
  green     = "#b5bd68",
  teal      = "#9fbd8f",
  sky       = "#8abeb7",
  sapphire  = "#85b0bc",
  blue      = "#81a2be",
  lavender  = "#a3a7c2",
  text      = "#c4c8c6",
  subtext1  = "#b5b7b4",
  subtext0  = "#969896",
  overlay2  = "#838585",
  overlay1  = "#717374",
  overlay0  = "#5e6063",
  surface2  = "#4a4e52",
  surface1  = "#373b41",
  surface0  = "#282a2e",
  base      = "#1d1f21",
  mantle    = "#151718",
  crust     = "#0e0f10",
  -- stylua: ignore end
}

return {
  name = "tomorrow-night",
  colorscheme = "catppuccin",

  apply = function(setup)
    setup({
      color_overrides = { mocha = palette },
      integrations = { aerial = true, blink_cmp = true },
    })

    vim.cmd.colorscheme("catppuccin")
    vim.cmd.hi("FloatBorder guifg=" .. palette.surface2)
    vim.cmd.hi("SnacksPicker guibg=" .. palette.base)
    vim.cmd.hi(string.format("SnacksPickerBorder guifg=%s guibg=%s", palette.surface2, palette.base))
    vim.cmd.hi("NormalAlt guibg=" .. palette.mantle)
  end,
}
