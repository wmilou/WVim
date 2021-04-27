-- Set termguicolors
local utils = require('utils')
utils.opt('o', 'termguicolors', true)

-- set color scheme
-- vim.cmd 'colorscheme gotham'

-- Material colorscheme
vim.g.material_style = 'deep ocean'         
vim.g.material_italic_comments = true
vim.g.material_italic_keywords = true
vim.g.material_italic_functions = true
vim.g.material_italic_variables = false
vim.g.material_contrast = true
vim.g.material_borders = false 
require('material').set()
