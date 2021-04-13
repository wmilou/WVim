"=============================================================================
" init.vim --- Entry file for neovim
" Author: Wedsley Fernando Da Silva Milouchine 
" License: GPLv3
"=============================================================================

"===================================================
"             Configurações do NERDTree
"===================================================
let NERDTreeShowHidden                    = 1

"Configurações do propio spaceVim 
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'

"ABREVIAÇÕES
"Abreviação do meu nome para documentação 
iabbrev Wedsley Wedsley Fernando Da Silva Milouchine
iabbrev Wdy Wedsley Fernando 

" RA da Faculdade para documentçao em atividades 
iabbrev RA RA:73183

"Configurações do tab
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

"Deixa syntax mais bonitinha
syntax on

" Não deixa as linhas sairem para fora da tela
set wrap

"

"===================================================
"                    Airline
"===================================================
let g:airline_powerline_fonts              = 1
let g:airline_symbols                      = {}
" let g:airline_left_sep                     = '⮀⮁ 🎮'
" let g:airline_right_sep                     = '⮃'
let g:airline#extensions#hunks#enabled     = 0
let g:airline#extensions#tabline#enabled   = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme                        = 'dracula'
let g:airline_powerline_fonts              = 1

"===================================================
"                  Copy and Paste
"===================================================
noremap <A-c> "+y
noremap <A-v> "+p  


"===================================================
"     Configurações do Nvim Customizadas por mim 
"===================================================
set history=5000
set undolevels=5000

"===================================================
"                   BARBAR CONFIG
"===================================================
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Close buffer
nnoremap <silent>    <A-q> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
"===================================================


"===================================================
"      move lines on code with C-j and C-k
"===================================================
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

noremap <silent> <c-k> :call <SID>swap_up()<CR>
noremap <silent> <c-j> :call <SID>swap_down()<CR>
"===================================================



"===================================================
"              Close current Buffer
"===================================================
function! s:close_current_buffer_no_close_vim()
    let current_buffer = bufnr('%')
    bp
    exec "bd" current_buffer
endfunction
noremap <silent> <c-q> :call <SID>close_current_buffer_no_close_vim()<CR>
"===================================================


"===================================================
"                Bloco do Telescope
"===================================================
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"=================================================
"                  LUA CONFIGS
"=================================================

" Lua Configs Telescope
lua << EOF
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position = "bottom",
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_defaults = {
      horizontal = {
        mirror = false,
        preview_width = 80,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file, file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 1,
    preview_cutoff = 100,
    results_height = 1,
    results_width = 0.8,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}
EOF


" Lua Configs Colorized hexadecimal
lua << EOF
-- Attaches to every FileType mode
require 'colorizer'.setup()

-- Attach to certain Filetypes, add special configuration for `html`
-- Use `background` for everything else.
require 'colorizer'.setup {
  'css';
  'javascript';
  html = {
    mode = 'foreground';
  }
}

-- Use the `default_options` as the second parameter, which uses
-- `foreground` for every mode. This is the inverse of the previous
-- setup configuration.
require 'colorizer'.setup({
  'css';
  'javascript';
  html = { mode = 'background' };
}, { mode = 'foreground' })

-- Use the `default_options` as the second parameter, which uses
-- `foreground` for every mode. This is the inverse of the previous
-- setup configuration.
require 'colorizer'.setup {
  '*'; -- Highlight all files, but customize some others.
  css = { rgb_fn = true; }; -- Enable parsing rgb(...) functions in css.
  html = { names = false; } -- Disable parsing "names" like Blue or Gray
}

-- Exclude some filetypes from highlighting by using `!`
require 'colorizer'.setup {
  '*'; -- Highlight all files, but customize some others.
  '!vim'; -- Exclude vim from highlighting.
  -- Exclusion Only makes sense if '*' is specified!
}
EOF
