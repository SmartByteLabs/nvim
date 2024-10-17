-- This plugin is used for the line theme in neovim. There is no command for this, it gets loaded directly when opening neovim

return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup({
      options = {
        theme = 'dracula'
      }
    })
  end
}
