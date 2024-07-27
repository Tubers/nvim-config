return {
  { 
    "catppuccin/nvim", 
    lazy = false, 
    name = "catppuccin", 
    priority = 1000,
    config = function()
      vim.cmd("colorscheme catppuccin")
    end,
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  }
}

