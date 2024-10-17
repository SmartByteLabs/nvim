-- plugins/telescope.lua

return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- for live grep with ripgrep
    vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})  -- find all references in the project
    vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})  -- find symbols in the current file
  end,
}

