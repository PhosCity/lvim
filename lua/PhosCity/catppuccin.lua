local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
	return
end

vim.g.catppuccin_flavour = "macchiato"

-- When running pywal, a script changes only the background color to what pywal generates by using following override
catppuccin.setup({
	color_overrides = {
		all = {
			base = "#09080c",
		},
	},
})
