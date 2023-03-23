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
	use { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" } -- Have packer manage itself
	use { "nvim-lua/plenary.nvim", commit = "9a0d3bf7b832818c042aaf30f692b081ddd58bd9" } -- Useful lua functions used by lots of plugins
	use { "kyazdani42/nvim-web-devicons", commit = "a421d183ef37dfa13f51a5805bed2381aebf9080" } -- file icons for nvim-tree
	use { "kyazdani42/nvim-tree.lua", commit = "f3b73725c5a007b8195118bec5868c32a5eff81f" } -- nvim-tree
	use { "nvim-telescope/telescope.nvim", commit = "5dfd807771dbd68b1b776e489c043337baccf638" } -- Telescope fuzzy file finder
	use { "nvim-treesitter/nvim-treesitter", commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac" } -- Treesitter syntax highlighting
	use { "s1n7ax/nvim-window-picker", commit = "5902827d0e338890a22849e2f18dc80d1cc1a8db" } -- Window picker
	use { "jjo/vim-cue", commit = "bd1a62303d096aa24fe4160a475645087f8770b3" } -- CUE language support

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
