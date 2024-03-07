return {
  'hrsh7th/nvim-cmp',
  event = "BufReadPre",
  dependencies = {
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline', 
    'rafamadriz/friendly-snippets',
  },
    config = function()
      vim.opt.completeopt = "menu,menuone,noselect"
      vim.opt.pumheight = 10
    end,
}
