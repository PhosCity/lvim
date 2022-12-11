vim.opt.spell = true

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
