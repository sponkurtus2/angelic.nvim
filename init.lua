vim.opt.cursorline = true
vim.opt.cmdheight = 1
vim.opt.encoding = "utf-8"
vim.scriptencoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.expandtab = true
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.laststatus = 3
vim.opt.linebreak = true
vim.opt.mouse = "a"
vim.opt.path:append({ "**" })
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 2
vim.opt.shortmess:append("c")
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.softtabstop = 2
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.timeoutlen = 600
vim.opt.title = true
vim.opt.updatetime = 1000
vim.opt.wrap = false
vim.opt.number = true
vim.opt.ruler = false
vim.opt.smarttab = true
vim.opt.completeopt = { "menu", "menuone", "noselect", "noinsert" }
vim.opt.equalalways = false
vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.formatoptions:append({ "r" })
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.shell = "zsh"
vim.opt.belloff = "all"
vim.g.mapleader = " "

-- Grupos específicos para PHP/Laravel (como JobFactory.php)
vim.api.nvim_set_hl(0, "@constructor.php", { fg = colors.purple, bold = true }) -- Clases (UserFactory)
vim.api.nvim_set_hl(0, "@method.php", { fg = colors.greenLight }) -- Métodos (definition)
vim.api.nvim_set_hl(0, "@function.builtin.php", { fg = colors.orange }) -- Funciones (fake())
vim.api.nvim_set_hl(0, "@property.php", { fg = colors.symbol }) -- Propiedades ($password)
vim.api.nvim_set_hl(0, "@string.php", { fg = colors.string }) -- Strings
vim.api.nvim_set_hl(0, "@keyword.php", { fg = colors.keyword, italic = true }) -- Keywords (public, return)
vim.api.nvim_set_hl(0, "@operator.php", { fg = colors.operator }) -- Operadores (=>)
vim.api.nvim_set_hl(0, "@comment.php", { fg = colors.comment, italic = true }) -- Comentarios

local lazypath = vim.fn.stdpath("data") .. "/development/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	root = vim.fn.stdpath("data") .. "/min/lazy",
	spec = {
		"nvim-telescope/telescope.nvim",
		{ "lewis6991/gitsigns.nvim", opts = {} },
		"nvim-lua/plenary.nvim",
		{
			"echasnovski/mini.hipatterns",
			version = false,
			event = "VeryLazy",
			config = function()
				local hipatterns = require("mini.hipatterns")

				hipatterns.setup({
					highlighters = {
						hex_color = hipatterns.gen_highlighter.hex_color(),
					},
				})
			end,
		},
		{
			"nvim-treesitter/nvim-treesitter",
			lazy = false,
			config = function()
				local ts = require("nvim-treesitter.configs")

				ts.setup({
					highlight = {
						enable = true,
						additional_vim_regex_highlighting = false,
						disable = {},
					},
					indent = {
						enable = true,
					},
					ensure_installed = {
						"lua",
						"vim",
						"bash",
						"html",
						"css",
						"json",
						"go",
						"rust",
						"php",
					},
					autotag = {
						enable = true,
					},
				})

				local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
				parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
			end,
			build = function()
				local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
				ts_update()
			end,
			dependencies = {
				{
					"nvim-treesitter/nvim-treesitter-context",
					opts = {},
				},
				"nvim-treesitter/playground",
			},
		},
		{
			"nvim-lualine/lualine.nvim",
			event = "VimEnter",
			dependencies = { "nvim-tree/nvim-web-devicons" },
			opts = {
				options = {
					icons_enabled = true,
					colorscheme = "angelic",
				},
			},
		},
		{
			"NeogitOrg/neogit",
			cmd = "Neogit",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim",
			},
			opts = {},
		},
	},
})

vim.keymap.set("i", "<C-c>", "<Esc>", opts)
vim.keymap.set("n", "<leader>gg", ":Neogit<Return>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>e", ":Explore<Return><Return>", opts)
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set("n", ">", ":tabnext<Return>", opts)
vim.keymap.set("n", "<", ":tabprev<Return>", opts)
local theme = require("telescope.themes").get_dropdown({})
vim.keymap.set("n", ";f", function()
	require("telescope.builtin").find_files(vim.tbl_deep_extend("force", {
		prompt_prefix = "   ",
		no_ignore = false,
		hidden = true,
	}, theme))
end, opts)

local theme = require("angelic/init")

theme.setup({
	transparent = false,
	italics = {
		comments = false,
		keywords = true,
		functions = true,
		strings = false,
		variables = true,
	},
})

vim.print(theme.config)

theme.colorscheme()
