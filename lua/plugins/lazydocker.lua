return {
	{
		"crnvl96/lazydocker.nvim",
		event = "VeryLazy",
		opts = {
			popup_window = {
				relative = "editor",
			},
		}, -- automatically calls `require("lazydocker").setup()`
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},
}
