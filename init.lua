vim.lsp.enable 'lua_ls'
vim.lsp.enable 'cmake'
vim.lsp.enable 'clangd'

require("config.keymaps")
require("config.options")

require("plugins.lsp")
require("plugins.tokyonight")
require("plugins.autopairs")
require("plugins.bufferline")
require("plugins.lualine")
require("plugins.surround")
require("plugins.tree")
require("plugins.noice")
require("plugins.smear-cursor")
require("plugins.treesitter")
require("plugins.blink")
require("plugins.flash")

