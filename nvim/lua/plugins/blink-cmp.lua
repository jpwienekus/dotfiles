local source_priority = {
  copilot = 4,
  lsp = 3,
  path = 2,
  buffer = 1
}

---@type LazyPluginSpec
return {
  'saghen/blink.cmp',
  dependencies = {
    'giuxtaposition/blink-cmp-copilot'
  },
  version = '1.*',
  ---@module 'blink.cmp',
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'default' },
    appearance = {
      nerd_font_variant = 'mono',
      kind_icons = {
        Text = '',
        Method = '󰆧',
        Function = '󰊕',
        Constructor = '',
        Field = '󰇽',
        Variable = '󰂡',
        Class = '󰠱',
        Interface = '',
        Module = '',
        Property = '󰜢',
        Unit = '',
        Value = '󰎠',
        Enum = '',
        Keyword = '󰌋',
        Snippet = '',
        Color = '󰏘',
        File = '󰈙',
        Reference = '',
        Folder = '󰉋',
        EnumMember = '',
        Constant = '󰏿',
        Struct = '',
        Event = '',
        Operator = '󰆕',
        TypeParameter = '󰅲',
        Copilot = '󰚩',
      },
    },
    completion = {
      documentation = {
        window = {
          border = 'single',
        },
        auto_show = true,
        auto_show_delay_ms = 500,
      },
      menu = {
        border = 'single',
        auto_show = true,
        draw = {
          columns = {
            { 'label',      'kind_icon', gap = 1 },
            { 'kind' },
            { 'source_name' },
          }
        }
      }
    },
    sources = {
      default = { 'copilot', 'lsp', 'path', 'buffer' },
      providers = {
        lsp = {
          score_offset = 2,
        },
        path = {
          score_offset = 4,
        },
        buffer = {
          score_offset = 3,
        },
        copilot = {
          score_offset = 1,
          name = "copilot",
          module = "blink-cmp-copilot",
          async = true,
          transform_items = function(_, items)
            local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
            local kind_idx = #CompletionItemKind + 1
            CompletionItemKind[kind_idx] = "Copilot"
            for _, item in ipairs(items) do
              item.kind = kind_idx
            end
            return items
          end,
        },
      },
    },
    signature = {
      enabled = true,
      window = {
        border = 'single'
      }
    },
    fuzzy = {
      implementation = 'lua',
      sorts = {
        function(a, b)
          if not a or not b then
            return false
          end
          local a_priority = source_priority[a.source_id] or 0
          local b_priority = source_priority[b.source_id] or 0
          return a_priority > b_priority
        end,
        'score',
        'sort_text'
      }
    }
  },
  opts_extend = { 'sources.default' }
}
