local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

require('null-ls').setup({
  -- format on save
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          vim.lsp.buf.formatting_sync(nil, 2000)
        end,
      })
    end
  end,
  sources = {
    require('null-ls').builtins.code_actions.eslint_d,
    require('null-ls').builtins.diagnostics.eslint_d,
    require('null-ls').builtins.formatting.eslint_d,
    require('null-ls').builtins.formatting.prettierd.with({
      filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
      },
    }),
  },
})

