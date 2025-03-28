local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- Automatically install packer
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	use { "wbthomason/packer.nvim", branch = "master" } -- Have packer manage itself
	use { "nvim-lua/plenary.nvim", tag = "v0.1.4" } -- Useful lua functions used by lots of plugins
	use { "kyazdani42/nvim-tree.lua", branch = "master" } -- nvim-tree
	use { "nvim-telescope/telescope.nvim", tag = "0.1.8" } -- Telescope fuzzy file finder
	use { "nvim-treesitter/nvim-treesitter", branch = "master" } -- Treesitter syntax highlighting
	use { "s1n7ax/nvim-window-picker", branch = "main" } -- Window picker
    use { "lewis6991/gitsigns.nvim", branch = "main" } -- git integration

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
