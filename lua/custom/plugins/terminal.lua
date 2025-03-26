return {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
        require('toggleterm').setup {
            open_mapping = [[<C-\>]], -- Open with Ctrl + \
            direction = 'float', -- Floating terminal
            shade_terminals = true,
        }
    end,
}
