local utils = require('utils')
local indent = 4

-- Map Leader to Space
vim.g.mapleader = ' '

-- Non resize on close buffer
vim.cmd('set noequalalways')

-- Syntax enable
vim.cmd 'syntax enable'

--  Filetype Plugin
vim.cmd 'filetype plugin indent on'

-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

-- Configs 
utils.opt('o', 'history', 5000)
utils.opt('o', 'undolevels', 5000)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('o', 'mouse', 'a')
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'expandtab', true)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('w', 'cursorcolumn', false)
utils.opt('w', 'cursorline', true)
utils.opt('w', 'wrap', true)
utils.opt('w', 'linebreak', true)
