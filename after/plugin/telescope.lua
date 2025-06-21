local telescope = require('telescope');
local builtin = require('telescope.builtin');

telescope.setup()

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({
		search = vim.fn.input("rg: ")
	})
end)

-- LSP Related
vim.keymap.set('n', '<leader>lr', builtin.lsp_references, {})
-- This is replaced by namu
-- vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>lw', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>ll', builtin.diagnostics, {})

-- DAP Related
telescope.load_extension('dap')
local dap = telescope.extensions.dap
vim.keymap.set('n', '<leader>dc', dap.commands, {})
vim.keymap.set('n', '<leader>dC', dap.configurations, {})
vim.keymap.set('n', '<leader>dB', dap.list_breakpoints, {})
vim.keymap.set('n', '<leader>df', dap.frames, {})
