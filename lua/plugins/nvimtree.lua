local M = {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 25,
        adaptive_size = true,
      }
    })
  end,
}
return M
