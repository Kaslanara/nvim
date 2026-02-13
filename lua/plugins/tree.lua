vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-tree.lua" }
})

require("nvim-tree").setup()

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {silent = true})
