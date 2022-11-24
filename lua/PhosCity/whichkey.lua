-- The font I used overlapped with the text
lvim.builtin.which_key.setup.icons.group = "+"

lvim.builtin.which_key.setup.plugins.presets.z = true
lvim.builtin.which_key.setup.plugins.presets.g = true
lvim.builtin.which_key.setup.plugins.registers = true
lvim.builtin.which_key.setup.plugins.marks = true

lvim.builtin.which_key.mappings["w"] = {}
lvim.builtin.which_key.mappings["c"] = {}

lvim.builtin.which_key.mappings["gf"] = {
	"<cmd>Telescope git_files<cr>",
	"Git Files",
}

lvim.builtin.which_key.mappings["gS"] = {
	"<cmd> Telescope git_status <CR>",
	"Git Status",
}

lvim.builtin.which_key.mappings["s"] = {
	name = "Search",
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
	f = { "<cmd>Telescope find_files<cr>", "Find files" },
	a = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find All" },
	b = { "<cmd> Telescope buffers <CR>", "Find Buffers" },
	t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
	s = { "<cmd>Telescope grep_string<cr>", "Find String" },
	r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
}

lvim.builtin.which_key.mappings["t"] = {
	name = "Terminal",
	f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
	h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
	v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
}

lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen Mode" }

lvim.builtin.which_key.mappings["u"] = {
	name = "Utils",
	r = { ":%s/<C-R><C-W>//gI<left><left><left>", "Replace word under cursor in file" },
	l = { ":s/<C-R><C-W>//gI<left><left><left>", "Replace word under cursor in line" },
	t = {
		"<cmd>lua require('PhosCity.utils').toggle_bool({word=vim.fn.expand('<cword>')})<CR>",
		"Toggle True or False",
	},
}

lvim.builtin.which_key.vmappings["s"] = { [[y/\V<C-R>=escape(@",'/\')<CR><CR>]], "Search visually selected text" }
