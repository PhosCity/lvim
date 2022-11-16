require("lvim.lsp.manager").setup("marksman")

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		command = "prettier",
		args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
		filetypes = { "markdown" },
	},
})
