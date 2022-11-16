-- Formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "black", filetypes = { "python" } },
})

-- Linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "flake8", args = { "--ignore", "E501" }, filetypes = { "python" } },
})
