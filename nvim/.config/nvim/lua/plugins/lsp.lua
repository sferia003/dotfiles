return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			automatic_enable = true,
			ensure_installed = {
				"lua_ls",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
		end,
	},
	{
		"saghen/blink.cmp",
		version = "1.*",
		opts = {
			keymap = {
				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
				["<CR>"] = { "select_and_accept", "fallback" },
				["<C-e>"] = { "hide", "fallback" },
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = { documentation = { auto_show = false } },

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			fuzzy = { implementation = "lua" },
		},
		opts_extend = { "sources.default" },
	},
}
