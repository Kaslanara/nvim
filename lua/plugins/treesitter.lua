-- Treesitter 语法高亮和代码分析配置
-- 提供精确的语法高亮、代码导航和重构功能

-- 安装 Treesitter 相关插件
vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" }, -- 主语法解析引擎
})

-- 配置 Treesitter 主引擎
require("nvim-treesitter").setup({
	install_dir = vim.fn.stdpath('data') .. '/site',
    modules = {}, -- 模块配置（保留为空）
	-- 确保安装的语法解析器列表
	ensure_installed = {
		"bash",
		"c", -- C 语言
		"cpp", -- C++ 语言
		"lua",
		"luap",
		"make",
	},
	sync_install = false, -- 不同步安装（后台安装）
	auto_install = true, -- 自动安装缺失的解析器
	ignore_install = {}, -- 忽略安装的解析器列表

	-- 语法高亮配置
	highlight = {
		enable = true, -- 启用语法高亮
	},

	-- 缩进配置
	indent = { enable = false }, -- 禁用基于语法的缩进（避免与文件类型缩进冲突）
	-- 增量选择功能
	incremental_selection = {
		enable = true, -- 启用增量选择
		keymaps = {
			init_selection = "gnn", -- 初始化选择
			node_incremental = "grn", -- 增量选择节点
			scope_incremental = "grc", -- 增量选择作用域
			node_decremental = "grm", -- 减量选择节点
		},
	},
})

