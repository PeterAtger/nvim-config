return {
	{
		"laytan/cloak.nvim",
		lazy = false,
		config = function()
			require("cloak").setup({
				enabled = false,
			})
		end,
	},
}
