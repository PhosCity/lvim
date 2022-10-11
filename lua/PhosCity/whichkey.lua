-- The font I used overlapped with the text, so I added a space after +.
lvim.builtin.which_key.setup.icons.group = "+ "

lvim.builtin.which_key.mappings["s"] = {
	name = "Search",
	b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
	c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
	h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
	H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
	M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
	R = { "<cmd>Telescope registers<cr>", "Registers" },
	k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
	C = { "<cmd>Telescope commands<cr>", "Commands" },
	p = {
		"<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
		"Colorscheme with Preview",
	},
}

lvim.builtin.which_key.mappings["f"] = {
	name = "Find",
	f = { "<cmd>Telescope find_files theme=ivy<cr>", "Find files" },
	t = { "<cmd>Telescope live_grep theme=ivy<cr>", "Find Text" },
	s = { "<cmd>Telescope grep_string<cr>", "Find String" },
	r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
}

lvim.builtin.which_key.mappings["d"] = {
	name = "Diagnostics",
	t = { "<cmd>TroubleToggle<cr>", "trouble" },
	w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
	d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
	q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
	l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
	r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

lvim.builtin.which_key.mappings["a"] = {
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
}

lvim.builtin.which_key.mappings["i"] = {
	name = "Latex",
	c = { "<cmd>VimtexCompile<cr>", "Compile" },
	e = { "<cmd>VimtexErrors<cr>", "Errors" },
	i = { "<cmd>VimtexInfo<cr>", "Info" },
	g = { "<cmd>VimtexClean<cr>", "Clean" },
	t = { "<cmd>VimtexTocToggle<cr>", "Table of Contents" },
	s = { "<cmd>VimtexStop<cr>", "Stop Compiling" },
}

lvim.builtin.which_key.mappings["o"] = {
	name = "Orgmode",
	a = { "<space>oa", "Open org agenda", noremap = false },
	r = { "<space>o$", "Archive to archive file", noremap = false },
	A = {
		name = "Agenda Prompt",
		f = { "f", "View forward agendas", noremap = false },
		b = { "b", "View backward agendas", noremap = false },
		z = { "z", "(.)Jump to today's agenda", noremap = false },
		v = {
			name = "View",
			d = { "vd", "Show agenda day view", noremap = false },
			w = { "vw", "Show agenda week view", noremap = false },
			m = { "vm", "Show agenda month view", noremap = false },
			y = { "vy", "Show agenda year view", noremap = false },
		},
		J = { "J", "Show calendar to choose a day to jump to", noremap = false },
		r = { "r", "Refresh the agenda view", noremap = false },
		t = { "t", "Cycle through TODO States", noremap = false },
	},
	c = { "<space>oc", "Open capture prompt", noremap = false },
	C = {
		name = "Capture Prompt",
		c = { "<C-c>", "<C-c>Capture content", noremap = false },
		r = { "<space>or", "(<Leader>or) Refile to destination", noremap = false },
		k = { "<space>ok", "(<Leader>ok) Exit without saving", noremap = false },
	},
	k = { "<space>ok", "Kill capture prompt without saving", noremap = false },
	t = { "<space>ot", "Add tag", noremap = false },
	K = { "<space>oK", "Move subtree up", noremap = false },
	J = { "<space>oJ", "Move subtree down", noremap = false },
	s = { "cit", "(cit)Cycle through TODO states", noremap = false },
	i = {
		name = "Insert",
		d = { "<space>oid", "Insert deadline", noremap = false },
		s = { "<space>ois", "Insert schedule", noremap = false },
		h = { "<space>oih", "Insert next heading after content", noremap = false },
		H = { "<space><cr>", "Insert next heading, list, checkbox", noremap = false },
		t = { "<space>oit", "Insert TODO headline after content", noremap = false },
		T = { "<space>oiT", "Insert TODO headline", noremap = false },
	},
}

lvim.builtin.which_key.mappings["t"] = {
	name = "Terminal",
	n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
	u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
	t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
	p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
	f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
	h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
	v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
}

lvim.builtin.which_key.mappings["z"] = {
	name = "Zen Mode",
	a = { "<cmd>TZAtaraxis<cr>", "Ataraxis" },
	f = { "<cmd>TZFocus<cr>", "Focus" },
	m = { "<cmd>TZMinimalist<cr>", "Minimalist" },
	n = { "<cmd>TZNarrow<cr>", "Narrow" },
}
