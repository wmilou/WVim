-- Use this if you use opt to packer
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    
    -- =======================================
    -- Packer can manage itself as an optional plugin
    -- =======================================
    use { 'wbthomason/packer.nvim', opt = true}

    -- =======================================
    --             Color schemes
    -- =======================================
    use { 'sainnhe/gruvbox-material' }
    use { 'dracula/vim', as = 'dracula' }
    use { 'rafi/awesome-vim-colorschemes' } use { 'crusoexia/vim-monokai' }
    -- ======================================= 
    --                 Tools
    -- =======================================
    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{ 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }} }

    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }

    -- Auto pairs plugin
    use { 'jiangmiao/auto-pairs' }

    -- Lua development
    use { 'tjdevries/nlua.nvim' }

    -- Vim dispatch
    use { 'tpope/vim-dispatch' }

    -- Fugitive for Git
    use { 'tpope/vim-fugitive' }

    -- To see Colors in terminal 
    use { 'norcalli/nvim-colorizer.lua' }
    -- BufferLine to manage Buffers
    use { 'akinsho/nvim-bufferline.lua'}
    -- Galaxyline statusline Styled

    use { 'glepnir/galaxyline.nvim', requires = {'kyazdani42/nvim-web-devicons'} }

    -- NvimTree 
    use { 'kyazdani42/nvim-tree.lua' }

    -- Autocomplete
    use { 'hrsh7th/vim-vsnip', opt = true }
    use { 'rafamadriz/friendly-snippets', opt = true }
    use { 'hrsh7th/nvim-compe', as = 'compe' }

    -- Lines swap
    use { 'WedsleyFernando/vim-swap-lines' }

    -- Commenter plugin
    use { 'preservim/nerdcommenter' }

    -- Ident mark
    use { 'Yggdroot/indentLine' }

    -- Terminal Open with Lua
    use { 'akinsho/nvim-toggleterm.lua' }

    -- Require Bufferline config
    require('config.bufferline.config')

    -- Require Galaxyline Config
    require('config.galaxyline.config')

    -- Require NerdCommenter Config
    require('config.nerdcommenter.config')

    -- Require NvimTree Config
    require('config.nvimtree.config')

    -- Require NvimTree Config
    require('config.toggleterm.config')
end)
