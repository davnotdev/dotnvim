local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({
		search = vim.fn.input("rg: ")
	})
end)

-- LSP Related
vim.keymap.set('n', '<leader>lr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>lw', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>ll', builtin.diagnostics, {})
