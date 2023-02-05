-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }


-- NvimTree
keymap("n", "<A-1>", ":NvimTreeToggle<CR>", opts)
