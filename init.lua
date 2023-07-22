vim.g.mapleader = ' '

vim.cmd [[source ~/.config/nvim/old_init.vim]]
require('settings')
require('plugins')
require('neo_tree_config')
require('indent_blankline_config')
require('nvim_treesitter_config')

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })

vim.cmd[[colorscheme dracula]]
