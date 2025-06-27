local cmp_nvim_lsp = require('cmp_nvim_lsp')
local lspconfig = require('lspconfig')

vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = false,
    signs = true,
    underline = true,
    severity_sort = true,
    float = true,
})
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if client:supports_method('textDocument/completion') then
            client.server_capabilities.completionProvider.triggerCharacters = {
                ".",
                ":",
                ">",
                "/",
                "*", "&", "-", "+", "=", "<", "!", "|", "^", "%", "~",
                "(", "[", "{", ",", "#", "@",
            }
            vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
        end
        
        local opts = { buffer = args.buf }
        vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>lD", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "<leader>lk", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>ln", function() vim.lsp.buf.rename() end, opts)
    end,
})
