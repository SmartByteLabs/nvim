-- This plugin is used to find files(fuzzy finder), and also for grepping files, Press Ctrl + P for finding files and Space + fg to grep something out of the code.

return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- install ripgrep, it might or might not work without it.
    end
}
