local on_file_open = { "BufRead", "BufWinEnter", "BufNewFile" }
lvim.plugins = {
	{ "p00f/nvim-ts-rainbow", after = "nvim-treesitter" },

	{ "junegunn/vim-easy-align", cmd = "EasyAlign" },

	{
		"leafo/moonscript-vim",
		ft = { "moon" },
	},

	-- Colorscheme
	{
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			require("PhosCity.catppuccin")
		end,
	},

	-- folke

	{
		"folke/todo-comments.nvim",
		event = on_file_open,
		config = function()
			require("todo-comments").setup()
		end,
	},

	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		config = function()
			require("PhosCity.zen-mode")
		end,
	},

	{
		"folke/twilight.nvim",
		cmd = "Twilight",
		config = function()
			require("twilight").setup()
		end,
	},

	-- Misc
	{ "chikamichi/mediawiki.vim", ft = { "mediawiki" } },

	{
		"ggandor/leap.nvim",
		event = on_file_open,
		config = function()
			require("leap").add_default_mappings()
		end,
	},

	{
		"ggandor/leap-spooky.nvim",
		event = on_file_open,
		config = function()
			require("leap-spooky").setup()
		end,
	},

	{
		"j-hui/fidget.nvim",
		event = on_file_open,
		config = function()
			require("fidget").setup()
		end,
	},

	{
		"karb94/neoscroll.nvim",
		event = "WinScrolled",
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

	{
		"NvChad/nvim-colorizer.lua",
		event = on_file_open,
		config = function()
			require("colorizer").setup({
				filetypes = {
					"css",
					"javascript",
					"scss",
					"html",
				},
				user_default_options = {
					RGB = true, -- #RGB hex codes
					RRGGBB = true, -- #RRGGBB hex codes
					names = true, -- "Name" codes like Blue or blue
					RRGGBBAA = false, -- #RRGGBBAA hex codes
					AARRGGBB = false, -- 0xAARRGGBB hex codes
					rgb_fn = false, -- CSS rgb() and rgba() functions
					hsl_fn = false, -- CSS hsl() and hsla() functions
					css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
					css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
					-- Available modes for `mode`: foreground, background,  virtualtext
					mode = "background", -- Set the display mode.
					-- Available methods are false / true / "normal" / "lsp" / "both"
					-- True is same as normal
					tailwind = false, -- Enable tailwind colors
					-- parsers can contain values used in |user_default_options|
					sass = { enable = false, parsers = { css } }, -- Enable sass colors
					virtualtext = "■",
				},
			})
		end,
	},

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

	{
		"smjonas/live-command.nvim",
		event = on_file_open,
		-- live-command supports semantic versioning via tags
		-- tag = "1.*",
		config = function()
			require("live-command").setup({
				commands = {
					Norm = { cmd = "norm" },
				},
			})
		end,
	},

	-- Ass
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

	-- Latex
	{
		"lervag/vimtex",
		ft = { "tex" },
		config = function()
			vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_quickfix_enabled = 0
		end,
	},

	{ "jbyuki/nabla.nvim", ft = { "tex" } },

	-- Orgmode
	{
		"nvim-orgmode/orgmode",
		ft = { "org" },
		config = function()
			require("PhosCity.orgmode").config()
		end,
	},
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
