local M = {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
        cmdline = {
            enabled = false,
            view = "cmdline"
        },
		lsp = {
			override = {
				-- override the default lsp markdown formatter with Noice
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				-- override the lsp markdown formatter with Noice
				["vim.lsp.util.stylize_markdown"] = true,
				-- override cmp documentation with Noice (needs the other options to work)
				["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
            bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
            inc_rename = false,
			lsp_doc_border = false,
		},
        messages = {
           enabled = false
        },
        popupmenu = {
            enabled = false
        },
	},
}

return M
