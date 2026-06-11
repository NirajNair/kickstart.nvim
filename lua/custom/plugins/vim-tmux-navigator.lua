---@module 'lazy'
---@type LazySpec
return {
  'christoomey/vim-tmux-navigator',
  vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<cr>', { desc = 'Move to the left tmux pane from nvim' }),
  vim.keymap.set('n', '<C-k>', ':TmuxNavigateDown<cr>', { desc = 'Move to the below tmux pane from nvim' }),
  vim.keymap.set('n', '<C-j>', ':TmuxNavigateUp<cr>', { desc = 'Move to the above tmux pane from nvim' }),
  vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<cr>', { desc = 'Move to the right tmux pane from nvim' }),
  vim.keymap.set('n', '<C-\\>', ':TmuxNavigatePrevious<cr>', { desc = 'Move to the previous tmux pane from nvim' }),
}
