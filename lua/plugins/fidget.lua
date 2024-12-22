return {
	{
		"j-hui/fidget.nvim",
		event = { "BufEnter" },
		config = function()
			-- Turn on LSP, formatting, and linting status and progress information
			require("fidget").setup({
				progress = {
					display = {
						progress_icon = { "dots_negative" },
					},
				},
				notification = {
					window = {
						winblend = 0, -- Background color opacity in the notification window
					},
				},
			})
		end,
	},
}
