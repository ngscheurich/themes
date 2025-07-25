-- Based on Tomorrow (https://github.com/chriskempson/tomorrow-theme)

local palette = {
  -- stylua: ignore start
  rosewater = "#ab7c70",
  flamingo  = "#8d594c",
  pink      = "#8957a8",
  mauve     = "#d84673",
  red       = "#c82829",
  maroon    = "#aa2223",
  peach     = "#c88828",
  yellow    = "#eab700",
  green     = "#718c00",
  teal      = "#57ab00",
  sky       = "#3e999f",
  sapphire  = "#368388",
  blue      = "#3e999f",
  lavender  = "#8e81d0",
  text      = "#282a2e",
  subtext1  = "#373b41",
  subtext0  = "#4a4e52",
  overlay2  = "#5e6063",
  overlay1  = "#717374",
  overlay0  = "#838585",
  surface2  = "#969896",
  surface1  = "#b5b7b4",
  surface0  = "#cfd0ce",
  base      = "#e9e9e8",
  mantle    = "#f5f5f5",
  crust     = "#fdfdfd",
  -- stylua: ignore end
}

return {
  name = "tomorrow",
  colorscheme = "catppuccin",

  status = {
    mode_icon_fg = palette.base,
    mode_name_fg = palette.mantle,
  },

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
    vim.cmd.hi("CursorLine guibg=#dfdfde")
  end,
}
