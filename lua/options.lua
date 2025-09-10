local opt = vim.opt

opt.showmode = false
opt.signcolumn = "yes:1" -- Always show sign column
opt.termguicolors = true -- Enable true colors
opt.ignorecase = true -- Ignore case in search
opt.swapfile = false -- Disable swap files
opt.autoindent = true -- Enable auto indentation
opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 4 -- Number of spaces for a tab
opt.softtabstop = 4 -- Number of spaces for a tab when editing
opt.shiftwidth = 4 -- Number of spaces for autoindent
opt.shiftround = true -- Round indent to multiple of shiftwidth
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.numberwidth = 2 -- Width of the line number column
opt.wrap = false -- Disable line wrapping
opt.cursorline = true -- Highlight the current line
opt.scrolloff = 8 -- Keep 8 lines above and below the cursor
opt.inccommand = "nosplit" -- Shows the effects of a command incrementally in the buffer
-- opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Directory for undo files
opt.undofile = true -- Enable persistent undo
opt.clipboard = "unnamedplus"
opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}
-- opt.completeopt = { "menuone", "popup", "noinsert" } -- Options for completion menu
-- opt.winborder = "rounded" -- Use rounded borders for windows
-- opt.hlsearch = false -- Disable highlighting of search results
-- vim.cmd.filetype("plugin indent on") -- Enable filetype detection, plugins, and indentation

-- "vesper" or "tokyonight"
vim.cmd.colorscheme("vesper")

-- local wk = require("which-key")
-- local icons = require("mini.icons")

-- wk.add({
-- 	{
-- 		mode = { "n" },
-- 		{
-- 			"gr",
-- 			group = "lsp",
-- 			icon = icons.get("filetype", "xml")
-- 		},
-- 	},
-- })
