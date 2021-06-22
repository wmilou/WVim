-- Add on this file yours instaled lsp servers

-- Python language server require
require'lspconfig'.pyright.setup{}  

-- Bash language server require
require'lspconfig'.bashls.setup{}  

-- HTML Server
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.html.setup {
  capabilities = capabilities,
}

-- Lsp Dart support
require'lspconfig'.dartls.setup{
    cmd = { "dart", "/opt/flutter/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot", "--lsp" }
}

-- Add Language server to Java
require'lspconfig'.java_language_server.setup{}
