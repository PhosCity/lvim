local status_ok, neorg = pcall(require, "neorg")
if not status_ok then
	return
end

local neorg_folder = "~/Documents/neorg/"

neorg.setup({
	load = {
		["core.defaults"] = {},
		["core.norg.journal"] = {
			config = {
				workspace = "journal",
			},
		},
		["core.norg.dirman"] = {
			config = {
				workspaces = {
					work = neorg_folder .. "work",
					home = neorg_folder .. "home",
					gtd = neorg_folder .. "gtd",
					journal = neorg_folder,
				},
			},
		},
		["core.norg.concealer"] = {
			config = {
				dim_code_blocks = {
					enabled = false,
				},
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
