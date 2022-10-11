lvim.plugins = {
	"leafo/moonscript-vim",
	"Pocco81/true-zen.nvim",
	"p00f/nvim-ts-rainbow",

	-- Colorscheme
	{
		"catppuccin/nvim",
		as = "catppuccin",
		run = ":CatppuccinCompile",
	},

	{
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup()
		end,
	},

	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},

	{
		"folke/todo-comments.nvim",
		event = "BufRead",
		config = function()
			require("todo-comments").setup()
		end,
	},

	{ "ggandor/lightspeed.nvim", event = "BufReadPost" },

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
		"norcalli/nvim-colorizer.lua",
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
		config = function()
			require("delaytrain").setup()
		end,
	},

	{
		"smjonas/live-command.nvim",
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
			vim.g.tex_flavor = "latex"
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

lvim.builtin.treesitter.rainbow.enable = true
