return {
	{
		"JoosepAlviste/palenightfall.nvim",
		config = function()
			local c = {
				references = "none", -- Mix 19 background / 1 purple

				foreground = "#a6accd",

				background_darker = "#232534",
				highlight = "#2b2f40",

				selection = "#343A51",
				statusline = "#1d1f2b",
				foreground_darker = "#7982b4",
				line_numbers = "#4e5579",
				comments = "#676e95",

				red = "#ff5370",
				orange = "#f78c6c",
				yellow = "#ffcb6b",
				green = "#c3e88d",
				cyan = "#89ddff",
				blue = "#82aaff",
				paleblue = "#b2ccd6",
				purple = "#D49BFD",
				brown = "#c17e70",
				pink = "#f07178",
				violet = "#bb80b3",

				-- Mix 6 background / 10 color
				red_dark = "#9e4057",
				orange_dark = "#9a6054",
				blue_dark = "#5970a6",
				green_dark = "#7d9367",
			}

			-- State tracking
			local is_transparent = false

			-- Define color sets
			local colors = {
				transparent = {
					background = "none",
				},
				normal = {
					background = "#1C202D",
				},
			}

			-- Function to toggle transparency and colors
			local function toggle_colors()
				is_transparent = not is_transparent

				local color_set = is_transparent and colors.transparent or colors.normal

				require("palenightfall").setup({
					transparent = is_transparent,
					color_overrides = {
						background = color_set.background,
					},

					highlight_overrides = {
						TelescopeBorder = { fg = c.foreground, bg = color_set.background },
						TelescopeNormal = { fg = c.foreground, bg = color_set.background },
						TelescopePromptNormal = { bg = c.references },
						TelescopePromptBorder = { fg = c.foreground, bg = color_set.background },

						WhichKeyNormal = { fg = c.foreground, bg = color_set.background },
						FloatNormal = { fg = c.foreground, bg = color_set.background },
						FloatBorder = { fg = c.foreground, bg = color_set.background },
						NotifyBackground = { fg = c.foreground, bg = color_set.background },

						Tag = { fg = c.red },
						Type = { fg = c.yellow },
						Operator = { fg = c.purple },
						Delimiter = { fg = c.blue },
						Special = { fg = c.blue },
						Constant = { fg = c.red },
					},
				})
			end

			-- Bind the function globally for keybinding
			vim.g.toggle_colors = toggle_colors

			-- Initial setup
			toggle_colors()

			-- Key mapping for <leader>ft
			vim.api.nvim_set_keymap(
				"n",
				"<leader>ft",
				"<cmd>lua vim.g.toggle_colors()<CR>",
				{ noremap = true, silent = true }
			)

			-- require("palenightfall").setup({
			-- 	transparent = true,
			-- 	color_overrides = {
			-- 		background = "#1C202D",
			-- 	},
			-- 	highlight_overrides = {
			-- 		TelescopeBorder = { fg = c.foreground, bg = c.background },
			-- 		TelescopeNormal = { fg = c.foreground, bg = c.background },
			-- 		TelescopePromptNormal = { bg = c.references },
			-- 		TelescopePromptBorder = { fg = c.foreground, bg = c.background },
			--
			-- 		WhichKeyNormal = { fg = c.foreground, bg = c.background },
			-- 		FloatNormal = { fg = c.foreground, bg = c.background },
			-- 		FloatBorder = { fg = c.foreground, bg = c.background },
			--
			-- 		Tag = { fg = c.red },
			-- 		Type = { fg = c.yellow },
			-- 		Operator = { fg = c.purple },
			-- 		Delimiter = { fg = c.blue },
			-- 		Special = { fg = c.blue },
			-- 		Constant = { fg = c.red },
			-- 	},
			-- })
		end,
	},
}
