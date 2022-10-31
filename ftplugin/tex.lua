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
	i = {
		name = "Latex",
		c = { "<cmd>VimtexCompile<cr>", "Compile" },
		e = { "<cmd>VimtexErrors<cr>", "Errors" },
		i = { "<cmd>VimtexInfo<cr>", "Info" },
		g = { "<cmd>VimtexClean<cr>", "Clean" },
		t = { "<cmd>VimtexTocToggle<cr>", "Table of Contents" },
		s = { "<cmd>VimtexStop<cr>", "Stop Compiling" },
	},
}

which_key.register(mappings, opts)
