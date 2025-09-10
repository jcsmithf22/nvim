local map = vim.keymap.set

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

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
    vim.lsp.buf.format()
end, { desc = "Format file" }) -- Format the current buffer using LSP

map("n", "grd", function()
    vim.lsp.buf.definition()
end, { desc = "vim.lsp.buf.definition()", noremap = true }) -- Go to definition
-- map("n", "grd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

map("n", "<leader>ps", function()
    vim.pack.update()
end, { desc = "Update plugins" })

local snacks = require("snacks")

map( "n", "<leader><space>", function() snacks.picker.smart() end, { desc = "Smart Find Files" })
map( "n", "<leader>,", function() snacks.picker.buffers() end, { desc = "Buffers" })
map( "n", "<leader>/", function() snacks.picker.grep() end, { desc = "Grep" })
map( "n", "<leader>:", function() snacks.picker.command_history() end, { desc = "Command History" })
-- map( "n", "<leader>e", function() snacks.explorer() end, { desc = "File Explorer" })
