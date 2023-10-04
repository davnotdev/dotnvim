local null_ls = require("null-ls")

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.diagnostics.glslc,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.dart_format,
        null_ls.builtins.formatting.cmake_format,
        null_ls.builtins.formatting.elm_format,
        null_ls.builtins.formatting.lua_format,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.gdformat,
        null_ls.builtins.hover.dictionary,
    },
    on_attach = function(client, bufnr)
        -- if client.supports_method("textDocument/formatting") then
        vim.keymap.set("n", "<Leader>lf", function()
            vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf(), async = true })
        end, { buffer = bufnr, desc = "[lsp] format" })
        -- end
    end,
})
