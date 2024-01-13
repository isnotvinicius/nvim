return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function(_, opts)
      return {
        require("rose-pine").setup({
          variant = "auto",
          dark_variant = "moon",
          styles = {
            bold = true,
            italic = false,
            transparency = true,
          },
          groups = {
            border = "pine",
          },
        }),
        require('notify').setup(vim.tbl_extend('keep', {
            background_colour = "#000000"
        }, opts))
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
