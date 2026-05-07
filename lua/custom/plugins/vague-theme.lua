-- A dark theme with vibrant highlights
-- https://github.com/vague-theme/vague.nvim

---@module 'lazy'
---@type LazySpec
return {
  'vague-theme/vague.nvim',
  config = function()
    require('vague').setup {
      italic = false,
    }
    vim.cmd.colorscheme 'vague'
  end,
}