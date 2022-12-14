vim.opt.spell = true
vim.opt.conceallevel = 2
-- lvim.keys.normal_mode["<Tab>"] = "zo"
-- lvim.keys.normal_mode["<S-Tab>"] = "zc"

lvim.builtin.which_key.mappings["n"] = {
	name = "Norg",
	i = { "<Cmd>Neorg inject-metadata<CR>", "Inject Metadata" },
	j = { "<Cmd>Neorg keybind norg core.integrations.treesitter.next.heading<CR>", "Goto next heading" },
	k = { "<Cmd>Neorg keybind norg core.integrations.treesitter.previous.heading<CR>", "Goto previous heading" },
	n = { "<Cmd>Neorg keybind norg core.norg.dirman.new.note<CR>", "New Note" },
	c = { "<Cmd>Neorg keybind norg core.looking-glass.magnify-code-block<CR>", "Code block magnify" },
	C = { "<Cmd>Neorg keybind norg core.norg.qol.todo_items.todo.task_cycle<CR>", "Cycle todo state" },
	h = { "<Cmd>Neorg keybind norg core.promo.demote<CR>", "Promote header" },
	l = { "<Cmd>Neorg keybind norg core.promo.promote<CR>", "Demote header" },
	e = {
		name = "export",
		d = { ":Neorg export directory<CR>", "Directory" },
		f = { ":Neorg export to-file<CR>", "To file" },
	},
	m = {
		name = "mode",
		t = { ":Neorg mode traverse-heading<CR>", "Traverse Heading" },
		n = { ":Neorg mode norg<CR>", "Neorg Mode" },
	},
	g = {
		name = "gtd",
		u = { "<Cmd>Neorg keybind norg core.norg.qol.todo_items.todo.task_undone<CR>", "Mark task as undone" },
		p = { "<Cmd>Neorg keybind norg core.norg.qol.todo_items.todo.task_pending<CR>", "Mark task as pending" },
		d = { "<Cmd>Neorg keybind norg core.norg.qol.todo_items.todo.task_done<CR>", "Mark task as done" },
		h = { "<Cmd>Neorg keybind norg core.norg.qol.todo_items.todo.task_on_hold<CR>", "Mark task as on-hold" },
		c = { "<Cmd>Neorg keybind norg core.norg.qol.todo_items.todo.task_cancelled<CR>", "Mark task as cancelled" },
		i = { "<Cmd>Neorg keybind norg core.norg.qol.todo_items.todo.task_important<CR>", "Mark task as important" },
		e = { "<Cmd>Neorg gtd edit<CR>", "Edit gtd" },
		v = { "<Cmd>Neorg gtd views<CR>", "View gtd" },
		C = { "<Cmd>Neorg gtd capture<CR>", "Capture gtd" },
	},
	J = {
		name = "Journal",
		c = { ":Neorg journal custom<CR>", "Custom" },
		t = { ":Neorg journal today<CR>", "Today" },
		T = { ":Neorg journal tomorrow<CR>", "Tomorrow" },
		Y = { ":Neorg journal yesterday<CR>", "Yesterday" },
	},
}
