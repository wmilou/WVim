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

    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    use { 'glepnir/lspsaga.nvim' }

    -- Auto pairs plugin
    use { 'jiangmiao/auto-pairs' }

    -- Vim GitGutter to see Modifications with git window
    use { 'airblade/vim-gitgutter' }

    -- Vim Fugitive to see real modification with git
    use { 'tpope/vim-fugitive' }

    -- Vim dispatch to auto compile programs with :make
    use { 'tpope/vim-dispatch' }

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

    -- Use to record keys
    use { 'liuchengxu/vim-which-key' }

    -- Lines swap
    use { 'wmilou/vim-swap-lines' }

    -- Commenter plugin
    use { 'preservim/nerdcommenter' }

    -- Ident mark
    use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' } 

    -- Terminal Open with Lua
    use { 'akinsho/nvim-toggleterm.lua' }


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

    -- Require ToggleTerm Config
    require('config.toggleterm.config')

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
