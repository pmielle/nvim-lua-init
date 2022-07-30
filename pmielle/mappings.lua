local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '
map('', '<space>', '')

-- normal mode
-- -----------
map('n', '<leader>/', ':nohl<CR>')
map('n', '<leader>j', '}')

-- insert mode
-- -----------
-- ...
