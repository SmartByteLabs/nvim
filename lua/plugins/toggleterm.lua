return {
  "akinsho/toggleterm.nvim",
  version = '*',
  config = function()
    require("toggleterm").setup({
      size = 15, -- adjust the height of the terminal
      open_mapping = [[<C-\>]], -- toggle terminal with Ctrl + \
      shade_terminals = true,
      direction = 'horizontal', -- can be 'horizontal', 'vertical', or 'float'
      close_on_exit = true, -- close terminal after process exit
    })
  end
}

