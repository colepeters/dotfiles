require('mason').setup({
  ui = {
    border = 'single'
  }
})

require('mason-lspconfig').setup({
  ensure_installed = {
    'css-lsp',
    'eslint_d',
    'diagnosticls',
    'html-lsp',
    'json-lsp',
    'lua-language-server',
    'prettierd',
    'typescript-language-server',
    'vim-language-server'
  }
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>?', vim.diagnostic.open_float, opts)  -- shows diagnostics in a floating window
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)          -- move to previous diagnostic
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)          -- move to next diagnostic

local on_attach = function (client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'g!', vim.lsp.buf.declaration, bufopts)         -- go to declaration
  vim.keymap.set('n', 'g?', vim.lsp.buf.definition, bufopts)          -- go to definition
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)      -- lists all implementations of symbol in quikfix
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)          -- lists all references to symbol in quickfix
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)                -- show hover information
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)   -- show signature information
end

require('mason-lspconfig').setup_handlers({
  function (server_name)
    require('lspconfig')[server_name].setup {
      on_attach = on_attach
    }
  end,
  ['sumneko_lua'] = function ()
    require('lspconfig').sumneko_lua.setup({
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
  ['diagnosticls'] = function ()
    require('lspconfig').diagnosticls.setup({
      on_attach = function (client)
        client.resolved_capabilities.document_formatting = false -- disable diagnosticls for formatting; use null-ls
      end,
    })
  end,
  ['tsserver'] = function ()
    require('lspconfig').tsserver.setup({
      on_attach = function (client)
        client.resolved_capabilities.document_formatting = false -- disable tsserver for formatting; use null-ls
      end,
    })
  end,
})

