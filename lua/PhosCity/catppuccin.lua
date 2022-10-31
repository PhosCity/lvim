local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
	return
end

catppuccin.setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	color_overrides = {
		mocha = {
			-- Pywal changes the color here everytime it's run.
			base = "#092E39",
		},
	},
	highlight_overrides = {
		mocha = function(mocha)
			return {
				NvimTreeNormal = { bg = mocha.none },
				CmpBorder = { fg = mocha.surface2 },
			}
		end,
	},
	integrations = {
		treesitter = true,
		nvimtree = true,
		lsp_saga = true,
		cmp = true,
		illuminate = true,
		fidget = true,
		lsp_trouble = true,
		notify = true,
		ts_rainbow = true,
		mason = true,
		leap = true,
		gitsigns = true,
		navic = {
			enabled = true,
			custom_bg = "NONE",
		},
	},
})
