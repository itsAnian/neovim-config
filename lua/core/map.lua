vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", function() Snacks.explorer.open() end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>f", function() Snacks.picker.files() end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>r", vim.lsp.buf.format)
