Vim�UnDo� _	��hs .M�(��rz׷I1e�Pi�w&�9S�b   (   "    vim.opt_local.colorcolumn = ""      !                       gZ�    _�                        !    ����                                                                                                                                                                                                                                                                                                                                                             gZj    �         (      "    vim.opt_local.colorcolumn = ""5��       !                  v                      �       (                  }                      �       '                  |                      �       &                  {                      �       %                  z                      �       $                  y                      �       #                  x                      �       "                  w                      �       !                 v                     �       !                 v                     �       !                 v                     5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                             gZo    �         (        pattern = "oil",     callback = function()   /    vim.opt_local.colorcolumn = "palenightfall"     end,�      (   (        {       "stevearc/oil.nvim",       opts = {},       -- Optional dependencies   5    dependencies = { "nvim-tree/nvim-web-devicons" },       config = function()         require("oil").setup({   $        use_default_keymaps = false,           keymaps = {   '          ["g?"] = "actions.show_help",   &          ["<CR>"] = "actions.select",   .          ["<C-\\>"] = "actions.select_split",   S          ["<C-enter>"] = "actions.select_vsplit", -- this is used to navigate left   +          ["<C-t>"] = "actions.select_tab",   (          ["<C-p>"] = "actions.preview",   &          ["<C-c>"] = "actions.close",   (          ["<C-r>"] = "actions.refresh",   #          ["-"] = "actions.parent",   %          ["_"] = "actions.open_cwd",             ["`"] = "actions.cd",              ["~"] = "actions.tcd",   )          ["gs"] = "actions.change_sort",   +          ["gx"] = "actions.open_external",   +          ["g."] = "actions.toggle_hidden",   
        },           view_options = {             show_hidden = true,   
        },         })       end,     },5��                       �       �      Z      �                       *       ]       X       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             gZ�    �         (      -		vim.opt_local.colorcolumn = "palenightfall"5��                         r                      5��