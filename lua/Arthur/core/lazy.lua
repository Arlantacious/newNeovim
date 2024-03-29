local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", 
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("Arthur.plugins", 
{
	install = {
		colorscheme = {
			"rose-pine"
		}
	},
	defaults = {
		lazy = false
	},
	ui = {
		border = "rounded"
	},
	checker = {
		enabled = true
	},
	debug = false,
})
vim.cmd.colorscheme("rose-pine")
