return {
	"RRethy/nvim-base16",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other plugins
	config = function()
		local theme = os.getenv("BASE16_THEME") or "base16-default-dark"
		vim.cmd("colorscheme base16-" .. theme)
	end,
}
