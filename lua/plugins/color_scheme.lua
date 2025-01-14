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

			-- local function outside_work_hours()
			-- 	-- Get the current hour from the system time
			-- 	local hour = os.date("*t").hour
			-- 	-- Check if the hour is greater than or equal to 18 (6 PM)
			-- 	return hour >= 18 or hour < 9
			-- end

			-- State tracking
			local is_transparent = true

			-- if outside_work_hours() then
			-- 	is_transparent = false
			-- end

			-- Define color sets
			local colors = {
				transparent = {
					background = "none",
				},
				normal = {
					background = "#1C1F2E",
				},
			}

			-- Function to toggle transparency and colors
			local function toggle_colors()
				vim.highlight.priorities.semantic_tokens = 75

				is_transparent = not is_transparent

				local color_set = is_transparent and colors.transparent or colors.normal

				require("palenightfall").setup({
					transparent = false,
					color_overrides = {
						background = color_set.background,
					},

					highlight_overrides = {
						TelescopeBorder = { fg = c.foreground, bg = color_set.background },
						TelescopeNormal = { fg = c.foreground, bg = color_set.background },
						TelescopePromptNormal = { bg = c.references },
						TelescopePromptBorder = { fg = c.foreground, bg = color_set.background },

						CursorLine = { bg = c.background_darker },
						CursorLineNr = { fg = c.orange },
						WhichKeyNormal = { fg = c.foreground, bg = color_set.background },
						FloatNormal = { fg = c.foreground, bg = color_set.background },
						FloatBorder = { fg = c.foreground, bg = color_set.background },
						FloatermBorder = { fg = c.foreground, bg = color_set.background },
						NotifyBackgroud = { fg = c.foreground, bg = color_set.background },

						Tag = { fg = c.red },
						Const = { fg = c.red },
						Type = { fg = c.yellow },
						Operator = { fg = c.purple },
						Delimiter = { fg = c.blue },
						Special = { fg = c.blue },
						Constant = { fg = c.red },
					},
				})

				-- Added integration with lualine
				require("lualine").setup({})
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
				{ noremap = true, silent = true, desc = "[F]ocus [T]oggle" }
			)
		end,
	},
}
