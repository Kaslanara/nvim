vim.pack.add({
    { src = "https://github.com/folke/flash.nvim" }
})

require('flash').setup()

-- flash.nvim 按键映射配置
vim.keymap.set({"n", "x", "o"}, "<Leader>s", function() require("flash").jump() end, { desc = "Flash" })
--vim.keymap.set({"n", "x", "o"}, "S", function() require("flash").treesitter() end, { desc = "Flash Treesitter" })
--vim.keymap.set("o", "r", function() require("flash").remote() end, { desc = "Remote Flash" })
--vim.keymap.set({"o", "x"}, "R", function() require("flash").treesitter_search() end, { desc = "Treesitter Search" })
--vim.keymap.set("c", "<c-s>", function() require("flash").toggle() end, { desc = "Toggle Flash Search" })
--普通跳转（<Leader>s）
--语法树跳转（S）
--远程跳转（o模式下按 r）
--语法树搜索+跳转（o/x模式下按 R）
--命令行模式下切换 Flash 搜索（<C-s>）
