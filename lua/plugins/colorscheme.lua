return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true

      -- hard, medium or soft
      vim.g.gruvbox_material_background = "hard"

      -- material, mix or original
      vim.g.gruvbox_material_foreground = "material"
    end,
  },
  { "neanias/everforest-nvim" },

  -- Select the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
