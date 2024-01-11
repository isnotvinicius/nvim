return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      return {
        require("rose-pine").setup({
          variant = "auto",
          dark_variant = "main",
          styles = {
            bold = true,
            italic = false,
            transparency = true,
          },

          groups = {
            -- background = "pine", --"#133340", --"#255159",
            -- panel = "surface",   -- "#133340",
            border = "pine", --"pine",
          },
        }),
      }
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
