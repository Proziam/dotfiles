-- NOTE: For more options, you can see `:help option-list`
-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Enable mouse mode, can be useful for resizing splits for example!
-- vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '  ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Sends yanked values to windows clipboard
-- https://github.com/microsoft/WSL/issues/4440
local clip = '/mnt/c/Windows/System32/clip.exe' -- Change this path if needed

if vim.fn.executable(clip) then
  local opts = {
    callback = function()
      if vim.v.event.operator ~= 'y' then
        return
      end
      vim.fn.system(clip, vim.fn.getreg(0))
    end,
  }

  opts.group = vim.api.nvim_create_augroup('WSLYank', {})
  vim.api.nvim_create_autocmd('TextYankPost', { group = opts.group, callback = opts.callback })
end

-- vim: ts=2 sts=2 sw=2 et
