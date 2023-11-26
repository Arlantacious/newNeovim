return {
    { "nvim-lua/plenary.nvim" },
    { "MunifTanjim/nui.nvim" },
    { "nvim-tree/nvim-web-devicons", opts = { default = true } },

    {
        "rmagatti/auto-session",
        lazy = false,
        opts = {
            auto_session_suppress_dirs = { "~/Downloads" },
        },
    },
    {
        "jackMort/ChatGPT.nvim",
        cmd = { "ChatGPT", "ChatGPTActAs" },
        config = true,
    },
}
