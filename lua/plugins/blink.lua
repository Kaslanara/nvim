vim.pack.add({
    { src = "https://github.com/saghen/blink.cmp" }
})
require('blink.cmp').setup({
  keymap = { preset = 'default' },

  completion = {
    documentation = { auto_show = false }
  },

  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },

  fuzzy = {
    --implementation = "prefer_rust_with_warning"
    implementation = "lua"
  }
})
