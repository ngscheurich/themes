-- Based on Catppuccin Mocha (https://catppuccin.com/palette/)

local palette = {
  -- stylua: ignore start
  rosewater = "#f5e0dc",
  flamingo  = "#f2cdcd",
  pink      = "#f5c2e7",
  mauve     = "#cba6f7",
  red       = "#f38b8a",
  maroon    = "#eba0ac",
  peach     = "#fab387",
  yellow    = "#f2e2af",
  green     = "#a6e3a1",
  teal      = "#94e2d5",
  sky       = "#89dceb",
  sapphire  = "#74c7e7",
  blue      = "#89b4fa",
  lavender  = "#b4befe",

  text      = "#cdd6f4",
  subtext1  = "#bac2de",
  subtext0  = "#a6adc8",

  overlay2  = "#9399b2",
  overlay1  = "#7f849c",
  overlay0  = "#6c7086",

  surface2  = "#585b70",
  surface1  = "#45475a",
  surface0  = "#313244",

  base      = "#1e1e2e",

  mantle    = "#181825",
  crust     = "#11111b",
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
    -- vim.cmd.hi("FloatBorder guifg=" .. palette.surface2)
    -- vim.cmd.hi("SnacksPicker guibg=" .. palette.base)
    -- vim.cmd.hi(string.format("SnacksPickerBorder guifg=%s guibg=%s", palette.surface2, palette.base))
    -- vim.cmd.hi("NormalAlt guibg=" .. palette.mantle)
  end,
}
