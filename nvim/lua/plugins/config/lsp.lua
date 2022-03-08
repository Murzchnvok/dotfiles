local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.gopls.setup({
  capabilities = capabilities,
})

lspconfig.pyright.setup({
  capabilities = capabilities,
})

lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {
      assist = {
        importPrefix = 'by_self'
      },
      cargo = {
        loadOutDirsFromCheck = true,
        allFeatures = true
      },
      procMacro = {
        enable = true
      },
      checkOnSave = {
        command = 'clippy'
      }
    }
  }
})
