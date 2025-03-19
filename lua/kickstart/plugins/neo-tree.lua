return {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
        { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    config = function()
        require('neo-tree').setup {
            filesystem = {
                window = {
                    mappings = {
                        ['\\'] = 'close_window',
                    },
                },
            },
            default_component_configs = {
                git_status = {
                    symbols = {
                        -- Change type
                        added = 'A',
                        deleted = '✖',
                        modified = 'M',
                        renamed = 'R',
                        -- Status type
                        untracked = 'U',
                        ignored = '',
                        unstaged = '',
                        staged = '',
                        conflict = '',
                    },
                },
            },
        }

        vim.api.nvim_set_hl(0, 'NeoTreeGitAdded', { fg = '#00FF00' })
        vim.api.nvim_set_hl(0, 'NeoTreeGitConflict', { fg = '#FF0000', bold = true })
        vim.api.nvim_set_hl(0, 'NeoTreeGitDeleted', { fg = '#FF5555' })
        vim.api.nvim_set_hl(0, 'NeoTreeGitIgnored', { fg = '#808080' })
        vim.api.nvim_set_hl(0, 'NeoTreeGitModified', { fg = '#007ACC' })
        vim.api.nvim_set_hl(0, 'NeoTreeGitUntracked', { fg = '#B0B0B0', bold = true })
    end,
}
