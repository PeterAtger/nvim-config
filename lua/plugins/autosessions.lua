return {
	{
		"rmagatti/auto-session",
		lazy = true,

		---enables autocomplete for opts
		---@module "auto-session"
		---@type AutoSession.Config
		opts = {
			--
			suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
			auto_create = true,
			lazy_support = true,
			lsp_stop_on_restore = true,
			session_lens = {
				load_on_setup = true,
				previewer = false,
				mappings = {
					-- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
					delete_session = { "i", "<C-D>" },
					alternate_session = { "i", "<C-S>" },
					copy_session = { "i", "<C-Y>" },
				},
				theme_conf = {
					border = true,
				},
			},
		},
		keys = {
			{ "<leader>ss", "<cmd>SessionSearch<CR>", desc = "Session search" },
			{ "<leader>ws", "<cmd>SessionSave<CR>", desc = "Session Save" },
		},
	},
}
