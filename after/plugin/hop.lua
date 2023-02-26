require('hop').setup()

vim.keymap.set("n", "s", function() vim.cmd("HopPattern") end)
vim.keymap.set("n", "W", function() vim.cmd("HopWord") end)
