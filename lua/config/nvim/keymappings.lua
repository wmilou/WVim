local utils = require('utils')

-- Mappings of Nvim
utils.map('n','<C-l>', '<cmd>noh<CR>') -- Clear highlishts
utils.map('i', 'jk', '<Esc>')           -- jk to escape

-- Mappings of Telescope
utils.map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')         -- To Find Files 
utils.map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')            -- To Select Buffer
utils.map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')          
utils.map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')          -- To Serach help

-- Mappings of NvimTree
utils.map('n', '<F3>', '<cmd>NvimTreeToggle<cr>')                     -- Open and Close TreeFiles

-- Mappings of bufferline
utils.map('n', '<A-.>', '<cmd>BufferLineCycleNext<CR>')               -- Select Next Buffer
utils.map('n', '<A-,>', '<cmd>BufferLineCyclePrev<CR>')               -- Select Previous Buffer
utils.map('n', '<A-]>', '<cmd>BufferLineMoveNext<CR>')                -- Move buffer to next position in bufferline
utils.map('n', '<A-[>', '<cmd>BufferLineMovePrev<CR>')                -- Move buffer to previous position in bufferline
-- other mappings
-- <cmd>BufferLineSortByDirectory<CR>
-- <cmd>BufferLineSortByExtension<CR>
--

-- Lsp Mappings
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.s_tab_complete()", {expr = true})
utils.map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
utils.map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
utils.map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
utils.map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
utils.map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
-- utils.map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
-- utils.map('n', '<C-n>', '<cmd>lua vim.lsp.buf.diagnostic.goto_prev()<CR>')
-- utils.map('n', '<C-p>', '<cmd>lua vim.lsp.buf.diagnostic.goto_next()<CR>')
  
  

-- ==============================================================
--                       SWAP LINES 
--          Swap Lines Create your mapping by default
-- ==============================================================
-- <c-k> Up Line 
-- <c-j> Down Line 


--
-- ==============================================================
--                        TERM TOGGLE
--         TermToggle Create your mapping by default
-- ==============================================================
-- <c-\> Open Terminal and close



-- ==============================================================
--                        NERD COMMENTER 
--        nerd comment auto create your default mappings
-- ==============================================================
-- [count]<leader>cc |NERDCommenterComment|
-- Comment out the current line or text selected in visual mode.
-- [count]<leader>cn |NERDCommenterNested|
-- Same as cc but forces nesting.
-- [count]<leader>c<space> |NERDCommenterToggle|
-- Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
-- [count]<leader>cm |NERDCommenterMinimal|
-- Comments the given lines using only one set of multipart delimiters.
-- [count]<leader>ci |NERDCommenterInvert|
-- Toggles the comment state of the selected line(s) individually.
-- [count]<leader>cs |NERDCommenterSexy|
-- Comments out the selected lines with a pretty block formatted layout.
-- [count]<leader>cy |NERDCommenterYank|
-- Same as cc except that the commented line(s) are yanked first.
-- <leader>c$ |NERDCommenterToEOL|
-- Comments the current line from the cursor to the end of line.
-- <leader>cA |NERDCommenterAppend|
-- Adds comment delimiters to the end of line and goes into insert mode between them.
-- |NERDCommenterInsert|
-- Adds comment delimiters at the current cursor position and inserts between. Disabled by default.
-- <leader>ca |NERDCommenterAltDelims|
-- Switches to the alternative set of delimiters.
-- [count]<leader>cl |NERDCommenterAlignLeft [count]<leader>cb |NERDCommenterAlignBoth
-- Same as |NERDCommenterComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
-- [count]<leader>cu |NERDCommenterUncomment|
-- Uncomments the selected line(s).
-- ==============================================================
