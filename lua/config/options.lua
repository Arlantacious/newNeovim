vim.opt.pumheight = 10
vim.opt.sidescrolloff = 3
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.updatetime = 100
vim.opt.shiftwidth = 8
vim.opt.tabstop = 8
vim.opt.cmdheight = 0
vim.opt.foldlevel = 99

vim.g.skip_intro = true
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.ignorecase = true
vim.opt.expandtab = true;
vim.opt.list = true
vim.opt.writebackup = false
vim.opt.number = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.showmode = false
vim.opt.autoindent = true
vim.opt.signcolumn = "yes"
vim.opt.mousemoveevent = true
vim.opt.autoindent = true
vim.opt.swapfile = false
vim.opt.foldenable = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.clipboard = "unnamedplus"
vim.opt.sessionoptions = "buffers,curdir,folds,help,tabpages,terminal,globals"
vim.opt.jumpoptions = "view"
vim.opt.splitkeep = "screen"
vim.opt.spelloptions = "camel,noplainbuffer"
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.wildmode = "longest:full:full"
vim.opt.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*DS_STORE,*.db"
vim.opt.fillchars = {
    foldopen = "",
    foldclose = "",
    fold = " ",
    foldsep = " ",
    diff = "/",
    eob = " ",
}
vim.api.nvim_set_keymap('n', '<leader><Tab>',
                        ':lua ToggleNvimTreeOrFocus()<CR>',
                        {
                            noremap = true,
                            silent = true
                        })
vim.api.nvim_exec([[autocmd FileType python setlocal tabstop=8 shiftwidth=8b]], true)
vim.cmd("autocmd VimEnter * NvimTreeOpen")

function ToggleNvimTreeOrFocus()
    if vim.bo.filetype == 'NvimTree' then
        vim.cmd('wincmd p')
    else
        vim.cmd('NvimTreeFocus')
    end
end




