-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        'github/copilot.vim',
        config = function()
            vim.cmd 'Copilot enable' -- Enables Copilot on startup
        end,
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()
          require('toggleterm').setup {
            open_mapping = [[<C-\>]], -- Open with Ctrl + \
            direction = "float",       -- Floating terminal
            shade_terminals = true
          }
        end
      }
}
