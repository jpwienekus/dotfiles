vim.lsp.config['emmet'] = {
  cmd = { 'emmet-ls', '--stdio' },
  filetypes = {
    'astro',
    'css',
    'html',
    'sass',
    'scss',
    'svelte',
    'typescriptreact',
  },
  root_markers = { '.git'},
}

vim.lsp.enable('emmet')
