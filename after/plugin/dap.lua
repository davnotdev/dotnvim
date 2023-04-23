local dap = require('dap')
local widgets = require('dap.ui.widgets')

vim.keymap.set("n", "<leader>dn", function() dap.continue() end)
vim.keymap.set("n", "<leader>db", function() dap.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dj", function() dap.step_into() end)
vim.keymap.set("n", "<leader>dk", function() dap.step_over() end)
vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
vim.keymap.set({ 'n', 'v' }, '<Leader>dK', function()
    widgets.hover()
end)
vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
    widgets.preview()
end)

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = 'codelldb',
    args = {"--port", "${port}"},

    -- detached = false,
  }
}

dap.configurations.cpp = {
    {
        name = 'Launch C/C++',
        type = 'codelldb',
        request = 'launch',
        program = function()
            --  TODO: Yuck.
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
    },
}

dap.configurations.rust = {
    {
        name = 'Launch Rust',
        type = 'codelldb',
        request = 'launch',
        program = function()
            --  TODO: Yuck.
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},

        initCommands = function()
            -- Find out where to look for the pretty printer Python module
            local rustc_sysroot = vim.fn.trim(vim.fn.system('rustc --print sysroot'))

            local script_import = 'command script import "' .. rustc_sysroot .. '/lib/rustlib/etc/lldb_lookup.py"'
            local commands_file = rustc_sysroot .. '/lib/rustlib/etc/lldb_commands'

            local commands = {}
            local file = io.open(commands_file, 'r')
            if file then
                for line in file:lines() do
                    table.insert(commands, line)
                end
                file:close()
            end
            table.insert(commands, 1, script_import)

            return commands
        end,
        -- ...,
    }
}
