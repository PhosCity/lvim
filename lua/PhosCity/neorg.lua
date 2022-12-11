local status_ok, neorg = pcall(require, "neorg")
if not status_ok then
	return
end

local neorg_folder = "~/Documents/neorg/"

neorg.setup({
	load = {
		["core.defaults"] = {},
		["core.norg.dirman"] = {
			config = {
				workspaces = {
					work = neorg_folder .. "work",
					main = neorg_folder .. "main",
					gtd = neorg_folder .. "main/gtd",
				},
			},
		},
		["core.norg.journal"] = {
			config = {
				workspace = "main",
			},
		},
		["core.norg.concealer"] = {
			config = {
				folds = true,
			},
		},
		["core.norg.completion"] = {
			config = {
				engine = "nvim-cmp",
			},
		},
		["core.gtd.base"] = {
			config = {
				workspace = "gtd",
			},
		},
		["core.export"] = {},
		["core.export.markdown"] = {
			config = {
				extensions = "all",
			},
		},
	},
})
