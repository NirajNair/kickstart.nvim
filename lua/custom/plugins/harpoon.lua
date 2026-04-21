-- Quick file navigation
-- https://github.com/ThePrimeagen/harpoon

---@module 'lazy'
---@type LazySpec
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  lazy = false,
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    local set = vim.keymap.set

    set('n', '<leader>A', function() harpoon:list():prepend() end, { desc = 'Prepend to Harpoon list' })
    set('n', '<leader>a', function() harpoon:list():add() end, { desc = 'Append to Harpoon list' })
    set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Toggle sHarpoon list' })

    -- switch to harpooned file 1-4
    set('n', '<leader>q', function() harpoon:list():select(1) end, { desc = 'Switch to file at position 1' })
    set('n', '<leader>w', function() harpoon:list():select(2) end, { desc = 'Switch to file at position 2' })
    set('n', '<leader>e', function() harpoon:list():select(3) end, { desc = 'Switch to file at position 3' })
    set('n', '<leader>r', function() harpoon:list():select(4) end, { desc = 'Switch to file at position 4' })
    set('n', '<leader>u', function() harpoon:list():select(5) end, { desc = 'Switch to file at position 5' })
    set('n', '<leader>i', function() harpoon:list():select(6) end, { desc = 'Switch to file at position 6' })
    set('n', '<leader>o', function() harpoon:list():select(7) end, { desc = 'Switch to file at position 7' })
    set('n', '<leader>p', function() harpoon:list():select(8) end, { desc = 'Switch to file at position 8' })

    -- susbstitute harpoon file 1-4 with new files
    set('n', '<leader><C-q>', function() harpoon:list():replace_at(1) end, { desc = 'Substitute file at position 1' })
    set('n', '<leader><C-w>', function() harpoon:list():replace_at(2) end, { desc = 'Substitute file at position 2' })
    set('n', '<leader><C-e>', function() harpoon:list():replace_at(3) end, { desc = 'Substitute file at position 3' })
    set('n', '<leader><C-r>', function() harpoon:list():replace_at(4) end, { desc = 'Substitute file at position 4' })
    set('n', '<leader><C-u>', function() harpoon:list():replace_at(5) end, { desc = 'Substitute file at position 5' })
    set('n', '<leader><C-i>', function() harpoon:list():replace_at(6) end, { desc = 'Substitute file at position 6' })
    set('n', '<leader><C-o>', function() harpoon:list():replace_at(7) end, { desc = 'Substitute file at position 7' })
    set('n', '<leader><C-p>', function() harpoon:list():replace_at(8) end, { desc = 'Substitute file at position 8' })

    -- toggle previous & next buffers stored within Harpoon list
    set('n', '<leader>n', function() harpoon:list():prev() end, { desc = 'Move to Next file in Harpoon' })
    set('n', '<leader>N', function() harpoon:list():next() end, { desc = 'Move to Prev file in Harpoon' })
  end,
}