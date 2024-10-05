require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim', opts = {} },

  require 'proziam/plugins/gitsigns',

  require 'proziam/plugins/which-key',

  require 'proziam/plugins/telescope',

  require 'proziam/plugins/colorscheme',

  require 'proziam/plugins/lspconfig',

  require 'proziam/plugins/conform',

  require 'proziam/plugins/cmp',

  require 'proziam/plugins/todo-comments',

  require 'proziam/plugins/mini',

  require 'proziam/plugins/treesitter',

  require 'proziam.plugins.autopairs',

  require 'proziam.plugins.neo-tree',

  require 'proziam.plugins.lazygit',

  require 'proziam.plugins.surround',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
