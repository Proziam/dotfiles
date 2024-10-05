return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = function()
    require('gruvbox').setup {
      contrast = 'hard',
    }
    vim.cmd 'colorschem gruvbox'
  end,
  opts = ...,
}
