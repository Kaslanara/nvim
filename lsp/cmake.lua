return {
  -- 指定要启动的语言服务器命令
  cmd = { 'cmake-language-server' },
  -- 指定对哪些文件类型启用此 LSP
  filetypes = { 'cmake' },
  -- 初始化选项，传递给语言服务器的初始配置
  init_options = {
    buildDirectory = 'build',
  },
  -- 用于定位项目根目录的标记文件或目录
  root_markers = {
    'CMakePresets.json',
    'CTestConfig.cmake',
    '.git',
    'build',
    'cmake'
  },
  -- 可选：其他通用 LSP 设置可以放在这里
  -- 例如 capabilities = capabilities, (这通常在别处统一设置)
  -- on_attach = on_attach,
}
