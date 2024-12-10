local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "[H]arpoon [A]dd" })
vim.keymap.set("n", "<leader>hp", ui.toggle_quick_menu, { desc = "[H]ar[P]oon" })
