vim.lsp.config['typescript'] = {
  cmd = {'typescript-language-server', '--stdio'},
  filetypes = {
    'typescript',
    'typescriptreact',
    'typescript.tsx',
  },
  root_markers = { 'tsconfig.json', 'package.json', '.git'},
  init_options = { hostInfo = 'neovim'}
}
vim.lsp.enable('typescript')
