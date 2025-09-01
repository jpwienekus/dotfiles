local options = {
  number = true,
  relativenumber = true,
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  smartindent = true,
  wrap = false,
  ignorecase = true,
  smartcase = true,
  hlsearch = true,
  termguicolors = true,
  scrolloff = 8,
  updatetime = 250,
  timeoutlen = 300,
  clipboard = 'unnamedplus',
  mouse = 'a',
  undofile = true,
  list = true,
  listchars = { tab = '» ', trail = '·', nbsp = '␣' },
  guifont = "Hack Nerd Font Mono",
  numberwidth = 4,
  signcolumn = 'yes:2',
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '', -- Could be '●', '▎', 'x'
    spacing = 4,
  },
  -- signs = {
  --   text = {
  --     [vim.diagnostic.severity.ERROR] = " ",
  --     [vim.diagnostic.severity.WARN] = " ",
  --     [vim.diagnostic.severity.INFO] = "󰋼 ",
  --     [vim.diagnostic.severity.HINT] = "󰌵 ",
  --   },
  --   numhl = {
  --     [vim.diagnostic.severity.ERROR] = "",
  --     [vim.diagnostic.severity.WARN] = "",
  --     [vim.diagnostic.severity.HINT] = "",
  --     [vim.diagnostic.severity.INFO] = "",
  --   },
  -- },
})
