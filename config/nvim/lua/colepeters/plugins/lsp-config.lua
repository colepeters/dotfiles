require('mason').setup({
  ui = {
    border = 'single'
  }
})

require('mason-tool-installer').setup({
  ensure_installed = {
    'css-lsp',
    'diagnostic-languageserver',
    'eslint_d',
    'html-lsp',
    'json-lsp',
    'prettierd',
    'lua-language-server',
    'typescript-language-server',
    'vim-language-server'
  }
})

local on_attach = function (client, bufnr)
  local function map(mode, shortcut, command, opts)
    local options = { noremap = true, silent = true, buffer = bufnr }
    if opts then
      options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, shortcut, command, options)
  end

  map('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to symbol definition' })

  -- show hover information
  map('n', 'K', vim.lsp.buf.hover)

  -- show signature information
  map('n', '<C-k>', vim.lsp.buf.signature_help)

  -- disable document formatting for all language servers; handled via null-ls instead
  client.server_capabilities.documentFormattingProvider = nil
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason-lspconfig').setup_handlers({
  function (server_name)
    require('lspconfig')[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities
    }
  end,
  ['tsserver'] = function ()
    require('lspconfig').tsserver.setup({
      settings = {
        implicitProjectConfiguration = {
          checkJs = true
        }
      }
    })
  end,
  ['lua_ls'] = function ()
    require('lspconfig').lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua ={
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    })
  end,
})

