return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{ "mason-org/mason-lspconfig.nvim" },
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("lua_ls", {
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
		"nvim-java/nvim-java",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-java/nvim-java-core" },
			{ "nvim-java/nvim-java-dap" },
			{ "nvim-java/nvim-java-test" },
			{ "neovim/nvim-lspconfig" },
			{ "nvim-java/nvim-java-refactor" },
			{ "JavaHello/spring-boot.nvim" },
		},
		config = function()
			require("java").setup({
				java_test = {
					enable = true,
					version = '0.43.1',
				}
      })
      require("lspconfig").jdtls.setup({
        on_attach = function(client, bufnr)
          vim.lsp.handlers["workspace/executeClientCommand"] = function(err, method, params, client_id, bufnr, config)
            return {}
          end
        end,
				settings = {
					java = {
						configuration = {
							runtimes = {
								{
									name = "JavaSE-17",
									path =
									"/Users/sferia/.sdkman/candidates/java/current",
								},
							},
						},
					},
				},
			})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References", nowait = true })
			vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
			vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { desc = "Goto T[y]pe Definition" })
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
			vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, { desc = "Hover" })
			vim.keymap.set("n", "gK", function() vim.lsp.buf.signature_help() end,
				{ desc = "Signature Help" })

			vim.keymap.set("i", "<c-k>", function() vim.lsp.buf.signature_help() end,
				{ desc = "Signature Help" })
		end,
	},
  {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
      -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
      -- 'super-tab' for mappings similar to vscode (tab to accept)
      -- 'enter' for enter to accept
      -- 'none' for no mappings
      --
      -- All presets have the following mappings:
      -- C-space: Open menu or open docs if already open
      -- C-n/C-p or Up/Down: Select next/previous item
      -- C-e: Hide menu
      -- C-k: Toggle signature help (if signature.enabled = true)
      --
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = { preset = 'default',

      ['<Enter>'] = { 'accept', 'fallback' },
    },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    -- (Default) Only show the documentation popup when manually triggered
    completion = { documentation = { auto_show = false } },
  },
  opts_extend = { "sources.default" }
	},
}
