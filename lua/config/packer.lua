vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP / Code
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use 'lukas-reineke/indent-blankline.nvim'
    use({
        "jackMort/ChatGPT.nvim",
        config = function()
            require("chatgpt").setup({
                keymaps = {
                    yank_last = "<C-y>",
                    close = "<C-c>",
                    scrolldown = "<C-d>",
                    scrollup = "<C-u>",
                    new_session = "<C-n>",
                    toggle_settings = "<C-o>",
                }
            })
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    })

    use 'https://github.com/jose-elias-alvarez/null-ls.nvim'
    use 'https://github.com/MunifTanjim/prettier.nvim'

    use 'norcalli/nvim-colorizer.lua'

    -- Navigation
    use 'mfussenegger/nvim-treehopper'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'nvim-tree/nvim-tree.lua'
    use 'phaazon/hop.nvim'

    -- Editing
    use 'tpope/vim-commentary'

    -- Bling
    use 'nvim-tree/nvim-web-devicons'

    use 'deathlyfrantic/vim-distill'
    use 'embark-theme/vim'
    use 'arzg/vim-colors-xcode'
    use 'davidosomething/vim-colors-meh'
    use 'nikolvs/vim-sunbather'
    use 'AlessandroYorba/Sierra'
    use 'danilo-augusto/vim-afterglow'
    use 'YabataDesign/afterglow-theme'
    use 'AlessandroYorba/Alduin'
    use 'ayu-theme/ayu-vim'
    use 'tyrannicaltoucan/vim-deep-space'
    use 'morhetz/gruvbox'
    use 'nanotech/jellybeans.vim'
    use 'scheakur/vim-scheakur'
    use 'Rigellute/shades-of-purple.vim'
    use 'arcticicestudio/nord-vim'
    use 'sainnhe/everforest'
    use 'savq/melange'
    use 'mkarmona/materialbox'
    use 'lmburns/kimbox'
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'cocopon/iceberg.vim'
end)
