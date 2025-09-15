vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle Neo-tree" })
vim.keymap.set("n", "<leader>f", function() Snacks.picker.files() end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>r", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>q", ":qa<CR>")
