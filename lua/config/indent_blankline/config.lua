vim.g.indent_blankline_char = '│'
vim.g.indent_blankline_buftype_exclude = {'terminal','dashboard'}
vim.g.indent_blankline_filetype_exclude = {'terminal','dashboard','help'}
vim.g.indent_blankline_bufname_exclude = {'README.md'}
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {'class', 'function', 'method', 'if', 'else','for', 'foreach','while', 'do', 'switch', 'case', 'default', 'try', 'catch', 'finally', 'struct'}
vim.g.indent_blankline_context_highlight_list = {'Label'}
vim.g.indent_blankline_show_trailing_blankline_indent = false

-- fix for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
vim.wo.colorcolumn = "999999"
