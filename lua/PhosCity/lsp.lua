lvim.format_on_save = true
lvim.lsp.diagnostics.virtual_text = false

-- Treesitter
lvim.builtin.treesitter.ensure_installed = {
	"python",
	"bash",
	"lua",
	"css",
	"yaml",
	"json",
}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.treesitter.rainbow.enable = true

-- Formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		command = "prettier",
		extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
		filetypes = { "java" },
	},
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "shfmt", extra_args = { "-ci", "-i", "0" }, filetype = { "sh" } },
	{ command = "black", extra_args = { "--fast" }, filetypes = { "python" } },
})

-- Linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "flake8", args = { "--ignore", "E501" } },
	{
		command = "shellcheck",
		args = { "-o", "all", "-e", "2312" },
	},
})
