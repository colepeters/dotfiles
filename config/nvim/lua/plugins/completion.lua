local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

vim.opt.completeopt = 'menuone,noinsert,noselect'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-CR>'] = cmp.mapping.confirm({ select = true }),
    ['<CR>'] = {}, -- disable enter for confirmation
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'nvim_lua'},
    { name = 'buffer' },
    { name = 'path' }
  })
})

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

