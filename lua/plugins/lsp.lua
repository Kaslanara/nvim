vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/MysticalDevil/inlay-hints.nvim" }
})
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "clangd"
    },
	automatic_enable = {
        exclude = {}
    },
})
vim.keymap.set('n','gl', vim.diagnostic.open_float, { desc = '显示错误详情' })
vim.keymap.set( 'n','[d', vim.diagnostic.goto_prev, { desc = '上一个诊断' })
vim.keymap.set( 'n',']d', vim.diagnostic.goto_next, { desc = '下一个诊断' })

