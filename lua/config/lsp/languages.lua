require'lspconfig'.pyright.setup{} -- Python language server require 
require'lspconfig'.bashls.setup{}  -- Bash language server require

-- HTML Server
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
