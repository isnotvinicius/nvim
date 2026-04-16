function ColorMyPencils(color)
    color = color or "night-owl" -- defina UM padrão

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

    { "erikbackman/brightburn.vim" },

    {
        "oxfist/night-owl.nvim",
        name = "night-owl",
        config = function()
            require("night-owl").setup({
                italics = false
            })
            ColorMyPencils("night-owl")
        end,
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000, -- garante que carrega primeiro
        config = function()
            require("tokyonight").setup({
                style = "storm",
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                    sidebars = "dark",
                    floats = "dark",
                },
            })
        end,
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end,
    },

    {
        "craftzdog/solarized-osaka.nvim",
        name = "solarized-osaka",
        opts = {
            transparent = true,
        },
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
}
