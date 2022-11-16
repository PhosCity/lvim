-- Formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "shfmt", args = { "-ci", "-i", "0" }, filetype = { "sh" } },
})

-- Linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		command = "shellcheck",
		args = { "-o", "all", "-e", "2312" },
		filetypes = { "sh" },
	},
})
