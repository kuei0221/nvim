vim.g.mapleader = ' '

vim.cmd [[source ~/.config/nvim/old_init.vim]]
require('settings')
require('plugins')
require('neo_tree_config')
require('indent_blankline_config')
require('nvim_treesitter_config')
require('noice_config')
require('nvim_treesitter_endwise_config')

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })

vim.cmd[[colorscheme dracula]]
vim.cmd[[
    autocmd WinEnter * setlocal foldmethod=expr
]]

require('trouble').setup()
vim.keymap.set('n', '<c-n>', require('illuminate').goto_next_reference, { desc = "Move to next reference" })
vim.keymap.set('n', '<c-p>', require('illuminate').goto_prev_reference, { desc = "Move to previous reference" })
