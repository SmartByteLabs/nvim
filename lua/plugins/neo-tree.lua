-- View your directory structure, This is mapped with Ctrl + n command. You can also use the command :Neotree filesystem reveal left
-- For creating directory or file, press a with the file name or directory with directory_name/

return  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal right<CR>', {})
  end
}

