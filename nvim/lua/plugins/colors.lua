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

    -- transparent background
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
    vim.api.nvim_set_hl(0, "Terminal", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "FoldColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "Folded", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })

    -- transparent notify background
    vim.api.nvim_set_hl(0, "NotifyINFOBody", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyERRORBody", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyWARNBody", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyTRACEBody", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyDEBUGBody", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyINFOTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyERRORTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyWARNTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyTRACETitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyINFOBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyERRORBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyWARNBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { bg = "none" })
  end,
}
