  -- bufferline config
  require'bufferline'.setup{
	options = {
    view = "default",
    numbers = "both",  -- "none" | "ordinal" | "buffer_id" | "both",
    number_style = "superscript", --  "" | { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
    -- mappings = true | false,
    buffer_close_icon= '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    tab_size = 18,
    separator_style = "thick", -- "slant" | "thick" | "thin" | { 'any', 'any' },
    enforce_regular_tabs = true,  -- false | true,
    always_show_bufferline = true -- true | false,
	}
  }
