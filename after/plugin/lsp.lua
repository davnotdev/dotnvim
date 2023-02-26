local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
    'sumneko_lua',
    'rust_analyzer',
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
    sign_icons = {
        error = "E",
        warn = "W",
        hint = "H",
        info = "I",
    },
    set_lsp_keymaps = false,
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
    if client.name == "tsserver" then
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end

    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>lD", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>lk", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>ln", function() vim.lsp.buf.rename() end, opts)
    -- vim.keymap.set("n", "<leader>lf", function()
    --     vim.lsp.buf.format { async = true }
    -- end, opts)
end)

lsp.set_server_config({
    settings = {
        ["rust-analyzer"] = {
            completion = { autoimport = { enable = false } },
            checkOnSave = { command = "clippy" },
            -- Maybe this line will cause issues?
            cargo = { allFeatures = true },
        },
        clangd = { arguments = { "-header-insertion=never" } },
    }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = false,
    signs = true,
    underline = true,
    severity_sort = true,
    float = true,
})
