vim.keymap.set('n', '<leader>l', function()
    require('treesj').toggle({ split = { recursive = true } })
end)
