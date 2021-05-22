local opts = {
  log_level = 'info',
  auto_session_enable_last_session = false,
  auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
  auto_session_enabled = true,
  auto_save_enabled = nil,
  auto_restore_enabled = false,
  auto_session_suppress_dirs = nil
}

require('auto-session').setup(opts)

-- TODO: Add Mapping to load session
-- FIX:  Try with Mapping
function load_last_session()
    vim.api.nvim_command('RestoreSession')
end
