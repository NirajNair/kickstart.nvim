-- LazyGit integration
-- https://github.com/kdheepak/lazygit.nvim

vim.api.nvim_create_user_command('LazyGitSide', function()
  vim.fn.setenv('DELTA_FEATURES', 'side-by-side')
  vim.cmd 'LazyGit'
end, {})

vim.api.nvim_create_user_command('LazyGitInline', function()
  vim.fn.setenv('DELTA_FEATURES', '')
  vim.cmd 'LazyGit'
end, {})

---@module 'lazy'
---@type LazySpec
return {
  'kdheepak/lazygit.nvim',
  lazy = true,
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  -- optional for floating window border decoration
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { '<leader>lg', '<cmd>LazyGitSide<cr>', desc = 'LazyGit (side-by-side)' },
    { '<leader>lgi', '<cmd>LazyGitInline<cr>', desc = 'LazyGit (inline)' },
  },
}
