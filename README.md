# WVIM 
### WVIM Dashboard 
![dashboard](https://github.com/WedsleyFernando/WVim/blob/master/images/dashboard.png?raw=true)

## How to Install
---
Copy and paste this line on your terminal emulator
> git clone https://github.com/WedsleyFernando/WVim.git ~/.config/nvim

	note: To install it, is required neovim version ( >= 0.5 )

--- 
### Download and Install all packages
	To load packages, open Nvim and exec 
Inside nvim exec command
> :PackerInstall
 
--------

## How to Add Keymapping

To add keymapping edit the file located in lua/config/nvim/kaymappings.lua

Example of Mapping: 
``` lua
-- ('{mode}', '{keys}', '{mappings}')
utils.map('i', 'jk', '<Esc>') -- jk to escape
```

-------

## How to configure nvim

To edit config of nvim edit the file located in lua/config/nvim/settings.lua

Example of Config:

``` lua
-- ({'scope'}, {'config'}, {'value'})
utils.opt('w', 'cursorcolumn', true)
```

----------

## How to change colorscheme

To change colorscheme edit file located on lua/config/nvim/colorscheme.lua

Example of change color:

``` lua
-- set color scheme
vim.cmd 'colorscheme gotham'
```

-----------

## How to configure Plugin

All configuration of the plugins are located in lua/config/{plugin-name}/config.lua

------------

## How to install new plugin

To install a new plugins in WVIM you need edit file lua/plugins.lua 

Example of plugins.lua: 
``` lua
-- Use packer to install new plugins
use { 'dracula/vim', as = 'dracula' }

-- For load config use 
-- set your config file location
require('config.bufferline.config')
```

---------------

## How to add LSP 

To add new lsp see the documentation of [lsp-nvim](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md) and edit the file located on lua/config/lsp/languages.lua

---------------

# What are the possibilities with WVIM?

### LSP (language server protocol)
![python-auto-import](https://github.com/WedsleyFernando/WVim/blob/master/images/python-auto-import.gif?raw=true)
### Snips
![gif-snip-html5](https://github.com/WedsleyFernando/WVim/blob/master/images/gif-snip-html5.gif?raw=true)
### Easy navigation
![easy-navigation](https://github.com/WedsleyFernando/WVim/blob/master/images/easy-navigation.gif?raw=true)
### Terminal integration
![terminal-integration](https://github.com/WedsleyFernando/WVim/blob/master/images/integration-with-terminal.gif?raw=true)

----------
Good Luck    <3

----------
Developed by : Wedsley Fernando 
