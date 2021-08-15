-- Use this if you use opt to packer
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- =======================================
    --                Packer
    -- =======================================
    use { 'wbthomason/packer.nvim', opt = true}

    -- =======================================
    --             LSP Manager 
    -- =======================================
    use {'kabouzeid/nvim-lspinstall'}

    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    use { 'glepnir/lspsaga.nvim' }

    -- To show errors  
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            }
        end
    }

    -- =======================================
    --             Color schemes
    -- =======================================
    use { 'sainnhe/gruvbox-material' }
    use { 'dracula/vim', as = 'dracula' } use { 'rafi/awesome-vim-colorschemes' } use { 'crusoexia/vim-monokai' } use { 'dylanaraps/wal.vim' }
    use { 'marko-cerovac/material.nvim' }

    -- ======================================= 
    --                 Tools
    -- =======================================
    -- Fuzzy finder Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{ 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }} 
    }

    -- Auto pairs plugin
    use { 'jiangmiao/auto-pairs' }

    -- Vim GitGutter to see Modifications with git window
    use { 'airblade/vim-gitgutter' }

    -- BufferLine to manage Buffers
    use { 'akinsho/nvim-bufferline.lua'}

    -- Galaxyline statusline Styled
    use { 'glepnir/galaxyline.nvim', requires = {'kyazdani42/nvim-web-devicons'} }

    -- Interactive Scrollbar
    use { 'dstein64/nvim-scrollview' }

    -- NvimTree 
    use { 'kyazdani42/nvim-tree.lua' }

    -- Autocomplete
    use { 'hrsh7th/vim-vsnip' }
    use { 'rafamadriz/friendly-snippets' }
    use { 'hrsh7th/nvim-compe', as = 'compe' }


    -- Icons on LSP
    use { 'onsails/lspkind-nvim' }

    -- Otimize syntax highlight
    use { 'nvim-treesitter/nvim-treesitter' }
    use { 'p00f/nvim-ts-rainbow' }
    use { 'romgrk/nvim-treesitter-context' }

    -- Todos and otthers highlight
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
            }
        end
    }

    -- DashBoard Plugin
    use { 'glepnir/dashboard-nvim' }

    -- Lines swap
    use { 'wmilou/vim-swap-lines' }

    -- Commenter plugin
    use { 'preservim/nerdcommenter' }

    -- Ident mark
    use { 'lukas-reineke/indent-blankline.nvim', branch = 'master' } 


    -- =======================================
    --         Call Modules Configs 
    -- =======================================
    -- Require Bufferline config
    require('config.bufferline.config')

    -- Require Galaxyline Config
    require('config.galaxyline.config')

    -- Require NerdCommenter Config
    require('config.nerdcommenter.config')

    -- Require NvimTree Config
    require('config.nvimtree.config')

    -- Require Dashboard Config
    require('config.dashboard.config')

    -- Require Treesitter Config
    require("config.treesitter.config")

    -- Require Indent-blankline Config
    require("config.indent_blankline.config")

    -- Require compe icons Config
    require("config.icons_compe.config")

    -- Require lsp install Config
    require("config.lsp_install.config")

    -- Require GitGutter Config 
    require("config.gitgutter.config")
end)
