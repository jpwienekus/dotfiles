-- return { 
--   "catppuccin/nvim", 
--   name = "catppuccin", 
--   priority = 1000,
--   config = function ()
--     vim.cmd.colorscheme "catppuccin-mocha"
--   end
-- }
return {
  'folke/tokyonight.nvim',
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    vim.cmd.colorscheme 'tokyonight-storm'
    vim.cmd.hi 'Comment gui=none'

    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#FFFFFF', bold = true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#FFFFFF', bold = true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#FFFFFF', bold = true })

    vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#FFFFFF', bold = true })
    vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#FFFFFF', bold = false })
  end,
}
