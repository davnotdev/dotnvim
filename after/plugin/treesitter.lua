-- A list of parser names, or "all"
require('nvim-treesitter').install({ "javascript", "typescript", "c", "lua", "rust" })
require('nvim-treesitter').setup({
    highlight = { 
        enable = true
    },
})

-- Pre-v0.12 dino code
--
-- require'nvim-treesitter.configs'.setup {
-- 	-- A list of parser names, or "all"
-- 	ensure_installed = { "javascript", "typescript", "c", "lua", "rust" },
-- 	sync_install = false,
-- 	auto_install = true,
-- 	highlight = {
-- 		enable = true,
-- 		additional_vim_regex_highlighting = false,
-- 	},
-- }

