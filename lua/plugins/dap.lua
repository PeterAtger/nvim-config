return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"jay-babu/mason-nvim-dap.nvim",
		},
		keys = {
			{
				"<leader>db",
				function()
					require("dap").toggle_breakpoint()
				end,
				desc = "Toggle Breakpoint",
			},
			{
				"<leader>dn",
				function()
					require("dap").continue()
				end,
				desc = "Setp continue",
			},
			{
				"<leader>do",
				function()
					require("dap").step_over()
				end,
				desc = "Setp over",
			},
			{
				"<leader>di",
				function()
					require("dap").step_into()
				end,
				desc = "Setp into",
			},
			{
				"<leader>dx",
				function()
					require("dap").step_out()
				end,
				desc = "Setp out",
			},
			{
				"<leader>dx",
				function()
					require("dap").disconnect()
				end,
				desc = "Dap Kill",
			},
			{
				"<leader>dt",
				function()
					require("dapui").toggle()
				end,
				desc = "Dapui Toggle",
			},
		},
		config = function()
			local dap = require("dap")

			require("mason-nvim-dap").setup({
				automatic_installation = true,
				handlers = {},
				ensure_installed = {
					"js-debug-adapter",
					"php-debug-adapter",
				},
			})

			dap.configurations.javascript = {
				{
					-- use nvim-dap-vscode-js's pwa-node debug adapter
					type = "node2",
					-- launch a new process to attach the debugger to
					request = "launch",
					-- name of the debug action you have to select for this config
					name = "Launch file in new node process",
					-- launch current file
					program = "${file}",
					cwd = "${workspaceFolder}",
				},
			}

			dap.configurations.typescript = {
				{
					type = "node2",
					request = "launch",
					name = "Feeds Tool",
					program = "${workspaceFolder}/node_modules/ts-node/dist/bin.js",
					cwd = "${workspaceFolder}/apps/generator",
					runtimeExecutable = "node",
					args = {
						"-P",
						"${workspaceFolder}/apps/generator/tsconfig.json",
						"${workspaceFolder}/apps/generator/src/debug.ts",
					},
					sourceMaps = true,
				},
				{
					name = "Launch File",
					type = "node2",
					request = "launch",
					cwd = "${workspaceFolder}",
					runtimeExecutable = "node",
					program = "${env:HOME}/n/lib/node_modules/ts-node/dist/bin.js",
					args = {
						"-P",
						"${workspaceFolder}/tsconfig.json",
						"${file}",
					},
					sourceMaps = false,
				},
			}

			dap.configurations.php = {
				{
					name = "PHP: Listen for Xdebug",
					port = 9003,
					request = "launch",
					type = "php",
					breakpoints = {
						exception = {
							Notice = false,
							Warning = false,
							Error = true,
							Exception = true,
							["*"] = false,
						},
					},
				},
			}

			require("dapui").setup()
			local dap, dapui = require("dap"), require("dapui")
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open({ reset = true })
			end
			dap.listeners.before.event_terminated["dapui_config"] = dapui.close
			dap.listeners.before.event_exited["dapui_config"] = dapui.close
		end,
	},
}
