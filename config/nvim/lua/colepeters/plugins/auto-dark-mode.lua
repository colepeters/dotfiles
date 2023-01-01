local status_ok, adm = pcall(require, 'auto-dark-mode')
if not status_ok then
  return
end


adm.setup({
  update_interval = 5000,
  set_dark_mode = function ()
    vim.api.nvim_set_option('background', 'dark')
    vim.cmd('colorscheme nightfox')
  end,
  set_light_mode = function ()
    vim.api.nvim_set_option('background', 'light')
    vim.cmd('colorscheme dayfox')
  end
})

adm.init()

