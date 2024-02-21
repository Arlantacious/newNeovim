return {

	"windwp/nvim-autopairs",
	event = "InsertEnter",
	
	opts = {
		check_ts = true
	},

	config = function(_, opts)
		require("nvim-autopairs").setup(opts)
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp_status_ok = pcall(require, "cmp")
		local cmp = pcall(require, "cmp")
	
		if not cmp_status_ok then
			return
		end

		cmp.event:on("confirm_done", cmo_autopairs.on_confirm_done())
        end
	
}


