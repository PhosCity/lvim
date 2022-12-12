vim.opt.spell = true
vim.opt.conceallevel = 2

lvim.builtin.which_key.mappings["o"] = {
	name = "Orgmode",
	A = {
		name = "Inside Agenda Prompt",
		f = { "f", "View forward agendas", noremap = false },
		b = { "b", "View backward agendas", noremap = false },
		t = { ".", "Jump to today's agenda", noremap = false },
		v = {
			name = "View",
			d = { "vd", "Show agenda day view", noremap = false },
			w = { "vw", "Show agenda week view", noremap = false },
			m = { "vm", "Show agenda month view", noremap = false },
			y = { "vy", "Show agenda year view", noremap = false },
		},
		C = { "J", "Show calendar to choose a day to jump to", noremap = false },
		r = { "r", "Refresh the agenda view", noremap = false },
		c = { "t", "Cycle through TODO States", noremap = false },
		p = { "+", "Plus priority by 1 level", noremap = false },
		m = { "-", "Minus priority by 1 level", noremap = false },
	},
	C = {
		name = "Inside Capture Prompt",
		c = { "<C-c>", "<C-c>Capture content", noremap = false },
		k = { "<space>ok", "(<Leader>ok) Exit without saving", noremap = false },
	},
	s = { "cit", "(cit)Cycle through TODO states", noremap = false },
	f = { "gqgq", "Format table", noremap = false },
}
