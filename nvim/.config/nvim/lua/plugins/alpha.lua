return {
	"goolord/alpha-nvim",
	dependencies = {
		"echasnovski/mini.icons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                               __                ]],
			[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
			[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
			[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
			[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
			[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
		}

		dashboard.config.layout = {
			{ type = "padding", val = 8 },
			dashboard.section.header,
			{ type = "padding", val = 2 },
			dashboard.section.buttons,
			{ type = "padding", val = 1 },
		}

		dashboard.section.buttons.val = {
			dashboard.button("b", "λ  > Browse files", ":Yazi<CR>"),
			dashboard.button("f", "λ  > Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "λ  > Recent", ":Telescope oldfiles<CR>"),
		}

		alpha.setup(dashboard.opts)
	end,
}
