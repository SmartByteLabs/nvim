-- lua/lsp-config.lua

local nvim_lsp = require('lspconfig')

-- Setup gopls (Go Language Server)
nvim_lsp.gopls.setup {
  on_attach = function(client, bufnr)
    local opts = { noremap=true, silent=true }

    -- Define key mappings for LSP actions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)  -- Find references
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)   -- Go to definition
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)         -- Hover documentation
  end,
}

