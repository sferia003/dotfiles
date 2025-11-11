vim.api.nvim_echo = function(...) end
require("config.lazy")
require("options")
require("keymaps")

vim.lsp.set_log_level("debug")
vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { fg = "#a3a2a2", bg = "#303030" })
