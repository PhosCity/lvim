-- Load custom tree-sitter grammar for org filetype
local status_ok, orgmode = pcall(require, "orgmode")
if not status_ok then
	return
end

orgmode.setup_ts_grammar()

-- Tree-sitter configuration
require("nvim-treesitter.configs").setup({
	-- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
	highlight = {
		enable = true,
		disable = { "org" }, -- Remove this to use TS highlighter for some of the highlights (Experimental)
		additional_vim_regex_highlighting = { "org" }, -- Required since TS highlighter doesn't support all syntax features (conceal)
	},
	ensure_installed = { "org" }, -- Or run :TSUpdate org
})

orgmode.setup({
	org_agenda_files = { "~/Documents/org/**" },
	org_default_notes_file = "~/Documents/org/todo.org",
	org_todo_keywords = { "TODO(t)", "IN-PROGRESS(i)", "WAITING(w)", "|", "DONE(d)", "CANCELLED(c)", "DELEGATED(x)" },
	org_agenda_start_on_weekday = false,
	org_agenda_start_day = "-2d",
	org_capture_templates = {
		t = {
			description = "Todo",
			template = "* TODO %? [/]\n:LOGGING:\nCREATED: %U\n:END:",
			target = "~/Documents/org/todo.org",
		},
		d = {
			description = "Daily Todo",
			template = "\n*** %<%Y-%m-%d %A> [/]\n    - [ ] Anki Review\n    - [ ] Workout\n    - [ ] %?",
			target = "~/Documents/org/daily.org",
		},
	},
})
