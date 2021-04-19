-- packer is package manager
-- Auto install packer.nvim if not exists
local fn = vim.fn
local execute = vim.api.nvim_command
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Install Plugins
require('plugins')

-- Import settings 
require('config.nvim.settings')

-- Key mappings
require('config.nvim.keymappings')

-- Import Colors
require('config.nvim.colorscheme')  -- color scheme

-- =======================================================
--                    Lsp Configs Import 
-- =======================================================
-- For install Languages Server completions and more access 
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
--
-- How to work?
-- Install language server specified on link and add configuration
-- line on file /nvim/lua/config/lsp/languages.lua
require('config.lsp')  -- lsp config, comment this line if you dont use any language server
