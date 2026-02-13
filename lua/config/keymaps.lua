local keymap = vim.keymap
vim.g.mapleader = " "
----视觉模式
--单行或多行移动
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")


----取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")


----分屏
--窗口间移动
keymap.set('n', '<C-h>', '<C-w>h', { desc = "移动到左窗口" })
keymap.set('n', '<C-j>', '<C-w>j', { desc = "移动到下窗口" })
keymap.set('n', '<C-k>', '<C-w>k', { desc = "移动到上窗口" })
keymap.set('n', '<C-l>', '<C-w>l', { desc = "移动到右窗口" })
        
--创建分屏
keymap.set('n', '<leader>|', '<C-w>v', { desc = "垂直分屏" })
keymap.set('n', '<leader>-', '<C-w>s', { desc = "水平分屏" })
keymap.set('n', '<leader>_', '<C-w>s', { desc = "水平分屏" })
        
--窗口管理
keymap.set('n', '<leader>=', '<C-w>=', { desc = "等分窗口" })
keymap.set('n', '<leader>q', '<C-w>q', { desc = "关闭窗口" })
keymap.set('n', '<leader>o', '<C-w>o', { desc = "仅保留当前窗口" })

--终端
keymap.set({'n'}, '<leader>t', '<Cmd>term<CR>i', {desc = "打开终端"})
vim.keymap.set('t', '<Bslash><Bslash>', '<C-\\><C-n><C-h>', { desc = "退出终端模式" })
