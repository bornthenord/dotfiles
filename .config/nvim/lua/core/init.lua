vim.g.mapleader = " "

local function setup_lazy()
	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not vim.loop.fs_stat(lazypath) then
		vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/folke/lazy.nvim.git",
			"--branch=stable",
			lazypath,
		})
	end
	vim.opt.rtp:prepend(lazypath)
end

setup_lazy()

require("lazy").setup({
	spec = {
		{ import = "core.plugins" },
		{ import = "core.themes.plugins" },
		--   { import = "dotnet.plugins" },
	},
	install = { colorscheme = { "gruvbox-material" } },
	checker = { enabled = true }, -- Автопроверка обновлений
	-- Другие настройки...
})
