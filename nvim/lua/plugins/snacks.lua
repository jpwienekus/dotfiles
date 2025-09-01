return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = {
      enabled = true,
      layout = {
        layout = {
          width = 0.5,
        }
      },
      formatters = {
        file = {
          truncate = 60,
        }
      }
    },
    notifier = {
      enabled = true,
      timeout = 10000
    }
  },
  keys = {
    { '<leader>sf', function() Snacks.picker.files() end, desc = 'Find Files'},
    { '<leader>sg', function() Snacks.picker.grep() end, desc = 'Grep'},
    { '<leader>n', function() Snacks.picker.notifications() end, desc = 'Notification History'},
  }
}
