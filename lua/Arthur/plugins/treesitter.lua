require("nvim-treesitter.configs").setup({

        ensure_installed = { "vimdoc, lua, python, java, c, cpp, go, asm"},

        sync_install = false,
        auto_install = true,
        highlight  = {
                enable = true
        }
})
