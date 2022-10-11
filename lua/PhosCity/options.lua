-- Whenever you change options related to a plugin, make sure to run :PackerInstall and :PackerCompile to make it effective.
-- Or simply save config.lua file.
lvim.log.level = "warn"
lvim.colorscheme = "catppuccin"
lvim.builtin.bufferline.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.breadcrumbs.active = true
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.dap.active = false
lvim.builtin.cmp.completion = { completion = { completeopt = "menu,menuone, noinsert" } }

lvim.builtin.alpha.active = true
lvim.builtin.alpha.dashboard.section.footer.val = ""

vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.timeoutlen = 500 -- time to wait for a mapped sequence to complete (in milliseconds)
