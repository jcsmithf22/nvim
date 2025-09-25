local map = vim.keymap.set

--
-- Clear search and stop snippet on escape
map({ "i", "n", "s" }, "<esc>", function()
	vim.cmd("noh")
	-- LazyVim.cmp.actions.snippet_stop() -- I'm not using snippets
	return "<esc>"
end, { expr = true, desc = "Escape and Clear hlsearch" })

vim.g.mapleader = " "

map("n", "<space>", "<Nop>")

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

map("n", "<Leader>w", "<cmd>w!<CR>", { desc = "Write", silent = true }) -- Save the current file
map("n", "<Leader>q", "<cmd>q<CR>", { desc = "Quit", silent = true }) -- Quit Neovim

map("n", "<Leader>fo", function()
	-- vim.lsp.buf.format()
	require("conform").format()
end, { desc = "Format file" }) -- Format the current buffer using LSP

map("n", "grd", function()
	vim.lsp.buf.definition()
end, { desc = "vim.lsp.buf.definition()", noremap = true }) -- Go to definition
-- map("n", "grd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

map("n", "<leader>ps", function()
	vim.pack.update()
end, { desc = "Update plugins" })

local snacks = require("snacks")

map("n", "<leader><space>", function()
	snacks.picker.files()
end, { desc = "Find Files" })
map("n", "<leader>,", function()
	snacks.picker.buffers()
end, { desc = "Buffers" })
map("n", "<leader>/", function()
	snacks.picker.grep()
end, { desc = "Grep" })
map("n", "<leader>:", function()
	snacks.picker.command_history()
end, { desc = "Command History" })
-- map( "n", "<leader>e", function() snacks.explorer() end, { desc = "File Explorer" })

map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>bd", function()
	snacks.bufdelete()
end, { desc = "Delete Buffer" })
map("n", "<leader>bo", function()
	snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })
map("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })
