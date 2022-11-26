lvim.format_on_save.enabled = true
lvim.lsp.diagnostics.virtual_text = false

-- Treesitter
lvim.builtin.treesitter.ensure_installed = {
	"python",
	"bash",
	"lua",
	"css",
	"yaml",
	"json",
	"org",
	"markdown",
	"latex",
}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.treesitter.rainbow.enable = true
