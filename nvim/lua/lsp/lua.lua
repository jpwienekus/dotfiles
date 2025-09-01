local stdPath = vim.fn.stdpath('data')

vim.lsp.config['lua-language-server'] = {
  cmd = { 'lua-language-server'},
  filetypes = { 'lua'},
  root_markers = { '.luarc.json', '.luarc.jsonc'},
  settings = {
    Lua = {
      diagnostics= {
        globals = { 'vim' }
      },
      workspace = {
        library = {
          [vim.env.VIMRUNTIME] = true,
          [stdPath .. '/lazy/lazy.nvim/lua'] = true,
          [stdPath .. '/lazy/blink.cmp/lua'] = true,
          [stdPath .. '/lazy/snacks.nvim/lua'] = true,
        }
      }
    }
  }
}

vim.lsp.enable('lua-language-server')
