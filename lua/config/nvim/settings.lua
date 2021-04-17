local utils = require('utils')
local indent = 4

-- Map Leader to Space
vim.g.mapleader = ' '

-- Syntax enable
vim.cmd 'syntax enable'

--  Filetype Plugin
vim.cmd 'filetype plugin indent on'

-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

-- Set history and undelevels
vim.g.history = 5000
vim.g.undolevels = 5000

-- Set suport to mouse is on
vim.g.mouse = 'a'

-- Configs 
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('w', 'wrap', true)
