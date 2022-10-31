local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	return
end

local opts = {
	mode = "n", -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
	a = {
		name = "Ass",
		v = { "<cmd>AssShow<CR>", "Video" },
		s = { "<cmd>AssPlay line<CR>", "Audio line" },
		t = { "<cmd>AssPlay all<CR>", "Audio all" },
		e = { "<cmd>AssPlayBG begin<CR>", "Audio BG start" },
		d = { "<cmd>AssPlayBG end<CR>", "Audio BG end" },
		q = { "<cmd>AssPlayBG before<CR>", "Audio BG before" },
		w = { "<cmd>AssPlayBG after<CR>", "Audio BG after" },
		x = { "<cmd>AssSplitLine<CR>", "Split Line" },
		c = { "<cmd>AssReplace<CR>0fN<cmd>AssSplitUp<CR>", "Only copy the line." },
		z = { "<cmd>lua require'ass'.opts.line_hook = require'PhosCity.assfilters'.filter1<CR>", "Apply Filter 1" },
		b = { "<cmd>lua require'ass'.opts.line_hook = require'PhosCity.assfilters'.filter2<CR>", "Apply Filter 2" },
		n = { ":AssSplit<Space>", "Split File", silent = false },
	},
}

which_key.register(mappings, opts)
