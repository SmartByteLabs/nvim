return {
  'Shatur/neovim-ayu', 
  config = function()
    -- Plugin-specific configuration
    require('ayu').setup({
      dark = true,  -- Enable the 'mirage', 'dark', 'light' variant
      overrides = {},
    })

    -- Apply the theme
    vim.cmd('colorscheme ayu')
  end
}
