vim.g.dashboard_custom_header = {
'                  _________ _______ ',
'|\\     /||\\     /|\\__   __/(       )',
'| )   ( || )   ( |   ) (   | () () |',
'| | _ | || |   | |   | |   | || || |',
'| |( )| |( (   ) )   | |   | |(_)| |',
'| || || | \\ \\_/ /    | |   | |   | |',
'| () () |  \\   /  ___) (___| )   ( |',
'(_______)   \\_/   \\_______/|/     |',
}


vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    c = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    d = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    e = {description = {'  Marks              '}, command = 'Telescope marks'},
    f = {description = {'------ CONFIGS ------ '}, command = ' '},
    g = {description = {'  Settings           '}, command = ':e ~/.config/nvim/lua/config/nvim/settings.lua'},
    h = {description = {'  LSP Languages      '}, command = ':e ~/.config/nvim/lua/config/lsp/languages.lua'},
    i = {description = {'  Key Mappings       '}, command = ':e ~/.config/nvim/lua/config/nvim/keymappings.lua'},
    j = {description = {'  Colors             '}, command = ':e ~/.config/nvim/lua/config/nvim/colorscheme.lua'}
}

-- file_browser = {description = {' File Browser'}, command = 'Telescope find_files'},

-- vim.g.dashboard_custom_shortcut = {
--     a = 'f',
--     find_word = 'SPC f a',
--     last_session = 'SPC s l',
--     new_file = 'SPC c n',
--     book_marks = 'SPC f b'
-- }
-- find_history = 'SPC f h',

-- vim.g.dashboard_session_directory = '~/.cache/nvim/session'
vim.g.dashboard_custom_footer = { 'https://github.com/WedsleyFernando/WVim' }
