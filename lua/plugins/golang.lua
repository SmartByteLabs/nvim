-- plugins/golang.lua

return {
  {
    'neovim/nvim-lspconfig',  -- Neovim LSP support
    config = function()
      local nvim_lsp = require('lspconfig')

      -- Configure gopls
      nvim_lsp.gopls.setup {
        on_attach = function(client, bufnr)
          local opts = { noremap=true, silent=true }
          -- 'gr' for finding references
          vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
          -- 'gd' for go to definition
          vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
          -- 'K' for hover documentation
          vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
        end,
      }
    end,
  }
}

