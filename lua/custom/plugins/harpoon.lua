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
    set('n', '<leader>1', function() harpoon:list():select(1) end, { desc = 'Switch to file at position 1' })
    set('n', '<leader>2', function() harpoon:list():select(2) end, { desc = 'Switch to file at position 2' })
    set('n', '<leader>3', function() harpoon:list():select(3) end, { desc = 'Switch to file at position 3' })
    set('n', '<leader>4', function() harpoon:list():select(4) end, { desc = 'Switch to file at position 4' })
    set('n', '<leader>5', function() harpoon:list():select(5) end, { desc = 'Switch to file at position 5' })
    set('n', '<leader>6', function() harpoon:list():select(6) end, { desc = 'Switch to file at position 6' })
    set('n', '<leader>7', function() harpoon:list():select(7) end, { desc = 'Switch to file at position 7' })
    set('n', '<leader>8', function() harpoon:list():select(8) end, { desc = 'Switch to file at position 8' })

    -- susbstitute harpoon file 1-4 with new files
    set('n', '<leader><C-1>', function() harpoon:list():replace_at(1) end, { desc = 'Substitute file at position 1' })
    set('n', '<leader><C-2>', function() harpoon:list():replace_at(2) end, { desc = 'Substitute file at position 2' })
    set('n', '<leader><C-3>', function() harpoon:list():replace_at(3) end, { desc = 'Substitute file at position 3' })
    set('n', '<leader><C-4>', function() harpoon:list():replace_at(4) end, { desc = 'Substitute file at position 4' })
    set('n', '<leader><C-5>', function() harpoon:list():replace_at(5) end, { desc = 'Substitute file at position 5' })
    set('n', '<leader><C-6>', function() harpoon:list():replace_at(6) end, { desc = 'Substitute file at position 6' })
    set('n', '<leader><C-7>', function() harpoon:list():replace_at(7) end, { desc = 'Substitute file at position 7' })
    set('n', '<leader><C-8>', function() harpoon:list():replace_at(8) end, { desc = 'Substitute file at position 8' })

    -- toggle previous & next buffers stored within Harpoon list
    set('n', '<leader>n', function() harpoon:list():prev() end, { desc = 'Move to Next file in Harpoon' })
    set('n', '<leader>N', function() harpoon:list():next() end, { desc = 'Move to Prev file in Harpoon' })
  end,
}

