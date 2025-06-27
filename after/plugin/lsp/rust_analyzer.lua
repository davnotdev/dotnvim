vim.lsp.config('rust_analyzer', {
    -- Server-specific settings. See `:help lsp-quickstart`
    settings = {
        ['rust-analyzer'] = {
            completion = { autoimport = { enable = false } },
            check = { command = "clippy" },
            checkOnSave = true,

            workspace = { 
                symbol = { 
                    search = { 
                        limit = 48000,
                        kind = "all_symbols",
                    } 
                } 
            },
            len = {
                enable = true,
            },
            -- Maybe this line will cause issues?
            -- cargo = { allFeatures = true },
        },
    },
})
vim.lsp.enable("rust_analyzer")
