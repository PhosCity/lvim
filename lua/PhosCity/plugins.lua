local on_file_open = { "BufRead", "BufWinEnter", "BufNewFile" }
lvim.plugins = {
	-- ╭──────────────────────────────────────────────────────────╮
	-- │ Colorscheme                                              │
	-- ╰──────────────────────────────────────────────────────────╯
	{
		"catppuccin/nvim",
		as = "catppuccin",
		run = ":CatppuccinCompile",
		config = function()
			require("PhosCity.catppuccin")
		end,
	},

	-- ╭──────────────────────────────────────────────────────────╮
	-- │ folke                                                    │
	-- ╰──────────────────────────────────────────────────────────╯

	-- Highlight, list and search todo comments in your projects
	{
		"folke/todo-comments.nvim",
		event = on_file_open,
		config = function()
			require("todo-comments").setup()
		end,
	},
	-- Distraction-free coding for Neovim
	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		config = function()
			require("PhosCity.zen-mode")
		end,
	},
	-- dims inactive portions of the code using TreeSitter.
	{
		"folke/twilight.nvim",
		cmd = "Twilight",
		config = function()
			require("twilight").setup()
		end,
	},

	-- ╭──────────────────────────────────────────────────────────╮
	-- │ Ggandor                                                  │
	-- ╰──────────────────────────────────────────────────────────╯

	-- motion plugin for Neovim
	{
		"ggandor/leap.nvim",
		event = on_file_open,
		config = function()
			require("leap").add_default_mappings()
		end,
	},
	--  Leap extension that allows for remote operations
	{
		"ggandor/leap-spooky.nvim",
		event = on_file_open,
		config = function()
			require("leap-spooky").setup()
		end,
	},
	-- Leap extension for enhanced f/t motions
	{
		"ggandor/flit.nvim",
		event = on_file_open,
		-- keys = { "f", "t", "F", "T" },
		config = function()
			require("flit").setup()
		end,
	},

	-- ╭──────────────────────────────────────────────────────────╮
	-- │ Miscellaneous                                            │
	-- ╰──────────────────────────────────────────────────────────╯

	-- Rainbow parentheses for neovim using tree-sitter
	{ "p00f/nvim-ts-rainbow", after = "nvim-treesitter" },

	-- Vim alignment plugin
	{ "junegunn/vim-easy-align", cmd = "EasyAlign" },

	-- Syntax highlighting for MediaWiki-based projects, such as Wikipedia.
	{ "chikamichi/mediawiki.vim", ft = { "mediawiki" } },

	-- Syntax higlighting for moonscript
	{ "leafo/moonscript-vim", ft = { "moon" } },

	-- UI for nvim-lsp progress
	{
		"j-hui/fidget.nvim",
		event = on_file_open,
		config = function()
			require("fidget").setup()
		end,
	},

	-- Smooth scrolling neovim plugin
	{
		"karb94/neoscroll.nvim",
		keys = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
		config = function()
			require("neoscroll").setup({
				-- All these keys will be mapped to their corresponding default scrolling animation
				mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
				hide_cursor = true, -- Hide cursor while scrolling
				stop_eof = true, -- Stop at <EOF> when scrolling downwards
				use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
				respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
				cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
				easing_function = nil, -- Default easing function
				pre_hook = nil, -- Function to run before the scrolling animation starts
				post_hook = nil, -- Function to run after the scrolling animation ends
			})
		end,
	},

	-- A high-performance color highlighter for Neovim
	{
		"NvChad/nvim-colorizer.lua",
		cmd = "ColorizerToggle",
		config = function()
			require("colorizer").setup()
		end,
	},

	-- Train yourself to stop repeating keys... gently
	{
		"ja-ford/delaytrain.nvim",
		event = on_file_open,
		config = function()
			require("delaytrain").setup({
				grace_period = 2,
				keys = { -- Which keys (in which modes) should be delayed
					["nv"] = { "h", "j", "k", "l" },
				},
			})
		end,
	},

	-- Text editing in Neovim with immediate visual feedback
	{
		"smjonas/live-command.nvim",
		event = on_file_open,
		config = function()
			require("live-command").setup({
				commands = {
					Norm = { cmd = "norm" },
				},
			})
		end,
	},

	-- Flow state reading in neovim
	{ "nullchilly/fsread.nvim", cmd = "FSToggle" },

	-- Dumb automatic fast indentation detection
	{ "Darazaki/indent-o-matic", event = on_file_open },

	-- ╭──────────────────────────────────────────────────────────╮
	-- │ Ass                                                      │
	-- ╰──────────────────────────────────────────────────────────╯
	-- for editing .ass subtitle files
	{
		"arch1t3cht/ass.nvim",
		ft = { "ass" },
		config = function()
			require("ass").setup({
				conceal = true,
				mappings = true,
				remap = true,
				mpv_options_video = { "--pause", "--really-quiet" },
				line_hook = require("PhosCity.assfilters").filter1,
			})
		end,
	},

	-- ╭──────────────────────────────────────────────────────────╮
	-- │ Latex                                                    │
	-- ╰──────────────────────────────────────────────────────────╯

	-- A modern Vim and neovim filetype plugin for LaTeX files.
	{
		"lervag/vimtex",
		ft = { "tex" },
		config = function()
			vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_quickfix_enabled = 0
		end,
	},

	-- ╭──────────────────────────────────────────────────────────╮
	-- │ Neorg                                                    │
	-- ╰──────────────────────────────────────────────────────────╯

	-- Reimagining org mode for neovim
	{
		"nvim-neorg/neorg",
		tag = "*",
		ft = "norg",
		after = "nvim-treesitter",
		run = ":Neorg sync-parsers",
		config = function()
			require("PhosCity.neorg")
		end,
	},

	-- Take your scentific notes in Neovim.
	{ "jbyuki/nabla.nvim", ft = { "tex", "norg" } },

	-- ╭──────────────────────────────────────────────────────────╮
	-- │ Orgmode                                                  │
	-- ╰──────────────────────────────────────────────────────────╯

	-- Org-mode for neovim
	{
		"nvim-orgmode/orgmode",
		ft = { "org" },
		config = function()
			require("PhosCity.orgmode").config()
		end,
	},
	-- Bullet concealer for org mode
	{
		"akinsho/org-bullets.nvim",
		ft = { "org" },
		config = function()
			require("org-bullets").setup({
				headlines = { "●", "◉", "○", "◉", "○" },
				checkboxes = {
					cancelled = { "", "OrgCancelled" },
					done = { "✓", "OrgDone" },
					todo = { "˟", "OrgTODO" },
				},
			})
		end,
	},
}
