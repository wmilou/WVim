" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/wedsley/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/wedsley/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/wedsley/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/wedsley/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/wedsley/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["awesome-vim-colorschemes"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/awesome-vim-colorschemes"
  },
  compe = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/compe"
  },
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/dart-vim-plugin"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  dracula = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/dracula"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  indentLine = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-jsbeautify"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/vim-jsbeautify"
  },
  ["vim-monokai"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/vim-monokai"
  },
  ["vim-swap-lines"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/vim-swap-lines"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["wal.vim"] = {
    loaded = true,
    path = "/home/wedsley/.local/share/nvim/site/pack/packer/start/wal.vim"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
