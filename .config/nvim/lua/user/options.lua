local options = {
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	fileencoding = "utf-8",    -- set file encoding to UTF-8
	number = true, 		   -- set numbered lines
	relativenumber = false,    -- set relative numbered lines
	mouse = "a", 		   -- allow usage of mouse
	splitright = true, 	   -- force all vertical splits to the right
	signcolumn = "yes", 	   -- always show the sign column, otherwise it would shift the text each time
	cursorline = true, 	   -- highlight the current line
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
