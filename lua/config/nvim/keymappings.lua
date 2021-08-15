local utils = require('utils')

-- Mappings of Nvim
utils.map('n', '<C-Left>', '<cmd>vertical resize +5<CR>')            -- resize buffer 
utils.map('n', '<C-Right>', '<cmd>vertical resize -5<CR>')           -- resize buffer 
utils.map('n', '<C-Up>', '<cmd>resize -5<CR>')                       -- resize buffer 
utils.map('n', '<C-Down>', '<cmd>resize +5<CR>')                     -- resize buffer 

utils.map('n', '<leader>ss', '<cmd>SessionSave<CR>')
utils.map('n', '<leader>sl', '<cmd>SessionLoad<CR>')

-- Mappings of Telescope
utils.map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')         -- To Find Files 
utils.map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')            -- To Select Buffer
utils.map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')          
utils.map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')          -- To Search help

-- Mappings of NvimTree
utils.map('n', '<F3>', '<cmd>NvimTreeToggle<cr>')                     -- Open and Close TreeFiles


-- Mappings of Dashboard 
utils.map('n', '<leader>dd', '<cmd>Dashboard<cr>')                     -- Open Dashboard 

-- Mappings of material colorscheme
vim.api.nvim_set_keymap('n', '<C-t>', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })

-- Mappings of bufferline
utils.map('n', '<A-.>', '<cmd>BufferLineCycleNext<CR>')               -- Select Next Buffer
utils.map('n', '<A-,>', '<cmd>BufferLineCyclePrev<CR>')               -- Select Previous Buffer
utils.map('n', '<A-]>', '<cmd>BufferLineMoveNext<CR>')                -- Move buffer to next position in bufferline
utils.map('n', '<A-[>', '<cmd>BufferLineMovePrev<CR>')                -- Move buffer to previous position in bufferline
utils.map('n', '<A-q>', '<cmd>bdelete<CR>')                           -- Close Buffer 
utils.map('n', '<C-A-q>', '<cmd>qa!<CR>')                             -- Close all buffers

-- Lsp Mappings
-- LspMapping saga
utils.map("n", "gh", "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>")  -- go to definition and reference
utils.map("n", "gs", "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>")  -- Signature Help
utils.map("n", "gr", "<cmd>lua require('lspsaga.rename').rename()<CR>")  --  Rename
utils.map("n", "gd", "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>")  --  preview definition
utils.map("n", "ca", "<cmd>lua require('lspsaga.codeaction').code_action()<CR>")  -- code actions NERDCommenterAlignBoth
utils.map("n", "K", "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>")  -- hover doc 
utils.map("n", "<C-f>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")  -- scroll down
utils.map("n", "<C-b>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")  -- scroll up

-- Trouble
utils.map("n", "<leader>xx", "<cmd>TroubleToggle<CR>")  -- Show all erros and navigate to us 

-- Completeme
utils.map("i", "<Tab>", "v:lua.tab_complete()", {expr = true}) -- tab to complete
utils.map("s", "<Tab>", "v:lua.tab_complete()", {expr = true}) -- tab to complete
utils.map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
utils.map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
  
-- Snip Mappings and AutoComplete
utils.map("i", "<CR>", "compe#confirm('<CR>')", {expr = true})
utils.map("n", "s", "<Plug>(vsnip-select-text)")
utils.map("x", "s", "<Plug>(vsnip-select-text)")
utils.map("n", "S", "<Plug>(vsnip-cut-text)")
utils.map("x", "S", "<Plug>(vsnip-cut-text)")

-- ==============================================================
--                       SWAP LINES 
--          Swap Lines Create your mapping by default
-- ==============================================================
-- <c-k> Up Line 
-- <c-j> Down Line 

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
