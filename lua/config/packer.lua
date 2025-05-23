vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP / Code
    use 'tpope/vim-fugitive'
    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    use 'stevearc/conform.nvim'
    use {
        'VonHeikemen/lsp-zero.nvim',
        commit = "9a68651",
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
            { 'saadparwaiz1/cmp_luasnip' },
        }
    }

    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
    use 'nvim-telescope/telescope-dap.nvim'

    use 'https://github.com/MunifTanjim/prettier.nvim'
    use 'akinsho/flutter-tools.nvim'
    use 'norcalli/nvim-colorizer.lua'

    -- Visual Indicators
    use 'nacro90/numb.nvim'
    use 'lukas-reineke/indent-blankline.nvim'


    -- Navigation
    use 'mfussenegger/nvim-treehopper'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'phaazon/hop.nvim'
    use 'nvim-tree/nvim-tree.lua'

    -- Editing
    use 'tpope/vim-commentary'
    use {
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    }

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
    use { 'Everblush/nvim', as = 'everblush' }
    use "nyoom-engineering/oxocarbon.nvim"
    use 'cocopon/iceberg.vim'
    use 'plan9-for-vimspace/acme-colors'
    use 'ntk148v/komau.vim'
end)
