vim.lsp.config('hls', {
    cmd = { "haskell-language-server-wrapper", "--lsp" },
    filetypes = { "haskell", "lhaskell", "cabal" },
})

vim.lsp.enable("hls")
