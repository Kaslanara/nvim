vim.pack.add({
    { src = "https://github.com/akinsho/bufferline.nvim" }
})

vim.opt.termguicolors = true

require("bufferline").setup({})

vim.keymap.set("n", "<leader>bh", ":BufferLineCyclePrev<CR>", {silent = true})
vim.keymap.set("n", "<leader>bl", ":BufferLineCycleNext<CR>", {silent = true})
vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", {silent = true})
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", {silent = true})
