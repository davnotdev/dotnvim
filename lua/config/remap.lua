-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "v", "n"} , "J", "<C-d>zz")
vim.keymap.set({ "v", "n" }, "K", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "v", "n" }, "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("n", "gs", ":sp<CR>")
vim.keymap.set("n", "gv", ":vs<CR>")
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wH", "4<C-w>>")
vim.keymap.set("n", "<leader>wL", "4<C-w><")
vim.keymap.set("n", "<leader>wJ", "4<C-w>-")
vim.keymap.set("n", "<leader>wK", "4<C-w>+")
vim.keymap.set("n", "<leader>w=", "<C-w>=")
vim.keymap.set("n", "<leader>ws", ":setl wfh<CR>:setl wfw<CR>")
vim.keymap.set("n", "<leader>wS", ":setl wfh&<CR>: setl wfw&<CR>")
vim.keymap.set("n", "<leader>th", ":tabp<CR>")
vim.keymap.set("n", "<leader>tl", ":tabn<CR>")
vim.keymap.set("n", "<leader>qs", ":set spell<enter>")
vim.keymap.set("n", "<leader>qS", ":set spell&<enter>")
vim.keymap.set("n", "<leader>b", "<C-^>")
vim.keymap.set("n", "<leader>tt", ":tabe %<CR>")
vim.keymap.set("n", "<leader>to", ":sp<CR>5<C-w>J:term<CR>2<C-w>-:setl wfh<CR>")
vim.keymap.set("n", "<leader>tO", ":vs<CR>5<C-w>L:term<CR>6<C-w><:setl wfw<CR>")
vim.keymap.set("t", "<C-j>", "<C-\\><C-n>")
