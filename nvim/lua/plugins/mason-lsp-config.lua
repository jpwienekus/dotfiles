return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      'lua_ls',
      'emmet_ls',
      'ts_ls',
      'svelte',
      'pyright',
      'gopls',
    },
  },
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
  },
}
