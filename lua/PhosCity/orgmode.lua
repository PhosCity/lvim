local M = {}

M.config = function()
	-- Load custom tree-sitter grammar for org filetype
	require("orgmode").setup_ts_grammar()

	-- Tree-sitter configuration
	lvim.builtin.treesitter.highlight.additional_vim_regex_highlighting = { "org" }

	require("orgmode").setup({
		org_agenda_files = { "~/Documents/org/**" },
		org_default_notes_file = "~/Documents/org/todo.org",
		org_todo_keywords = {
			"TODO(t)",
			"IN-PROGRESS(i)",
			"WAITING(w)",
			"|",
			"DONE(d)",
			"CANCELLED(c)",
			"DELEGATED(x)",
		},
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
end

return M
