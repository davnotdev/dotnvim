require('gitblame').setup { enabled = false }

vim.keymap.set("n", "<leader>qgb", ":GitBlameToggle<CR>")

