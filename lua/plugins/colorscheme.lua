return {
  -- add night owl theme
  {
    "oxfist/night-owl.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      italics = false,
    },
  },

  {
    "LazyVim/LazyVim",
    lazy = true,
    opts = {
      colorscheme = "night-owl",
    },
  },
}
