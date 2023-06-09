require('rose-pine').setup({
    disable_italics = true,
    dark_variant = 'moon',
})

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	-- TRANSPARENT BACKGROUND
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })

end

ColorMyPencils()
