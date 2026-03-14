vim.pack.add({
    { src = "https://github.com/folke/tokyonight.nvim" }
})
require("tokyonight").setup({
  -- 启用夜间模式（最深的预设样式）
  style = "night",  -- 可选: "storm" (最深), "night", "day"

  -- 将背景设置为纯黑色
  on_colors = function(colors)
    colors.bg = "#000000"  -- 主背景设为纯黑
    colors.bg_dark = "#0a0a0a"  -- 深色背景稍亮一点
    return colors
  end
})
vim.cmd[[colorscheme tokyonight-night]]


