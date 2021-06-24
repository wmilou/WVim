vim.g.dashboard_custom_header = {
    "                                   ",
    "                                   ",
    "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆         ",
    "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
    "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
    "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
    "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
    "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
    "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
    " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
    " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
    "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       ",
    "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
    "                                   ",
    '                  _________ _______ ',
    '|\\     /||\\     /|\\__   __/(       )',
    '| )   ( || )   ( |   ) (   | () () |',
    '| | _ | || |   | |   | |   | || || |',
    '| |( )| |( (   ) )   | |   | |(_)| |',
    '| || || | \\ \\_/ /    | |   | |   | |',
    '| () () |  \\   /  ___) (___| )   ( |',
    '(_______)   \\_/   \\_______/|/     \\|',
}


vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  New Empty File     '}, command = ':enew'},
    b = {description = {'  Find File          '}, command = 'Telescope find_files'},
    c = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    d = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    e = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    f = {description = {'  Marks              '}, command = 'Telescope marks'},
    g = {description = {'------ CONFIGS ------ '}, command = ' '},
    h = {description = {'  Settings           '}, command = ':e ~/.config/nvim/lua/config/nvim/settings.lua'},
    i = {description = {'  LSP Languages      '}, command = ':e ~/.config/nvim/lua/config/lsp/languages.lua'},
    j = {description = {'  Key Mappings       '}, command = ':e ~/.config/nvim/lua/config/nvim/keymappings.lua'},
    k = {description = {'  Colors             '}, command = ':e ~/.config/nvim/lua/config/nvim/colorscheme.lua'},
    l = {description = {'  Plugins            '}, command = ':e ~/.config/nvim/lua/plugins.lua'}
}

vim.g.dashboard_custom_footer = { 'https://github.com/wmilou/WVim' }
