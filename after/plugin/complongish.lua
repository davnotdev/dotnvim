-- complongish
vim.api.nvim_set_keymap('i', '<C-l>', [[<Cmd>:lua require('complongish').complongish()<CR>]], { noremap = true, silent = true })
