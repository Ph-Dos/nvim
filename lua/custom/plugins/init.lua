return {
  {
    'gthelding/monokai-pro.nvim',
    config = function()
      require('monokai-pro').setup {
        filter = 'ristretto',
        override = function()
          return {
            -- General highlight groups for functions (from previous step)
            -- ['@function'] = { fg = '#fd6883' },
            ['@function.call'] = { fg = '#fd6883' },
            ['@function.method'] = { fg = '#fd6883' },
            ['@method'] = { fg = '#fd6883' },
            ['@function.builtin'] = { fg = '#fd6883' },
            -- ['@function.macro'] = { fg = '#fd6883' },

            nontext = { fg = '#948a8b' },
            miniiconsgrey = { fg = '#948a8b' },
            miniiconsred = { fg = '#fd6883' },
            miniiconsblue = { fg = '#85dacc' },
            miniiconsgreen = { fg = '#adda78' },
            miniiconsyellow = { fg = '#f9cc6c' },
            miniiconsorange = { fg = '#f38d70' },
            miniiconspurple = { fg = '#a8a9eb' },
            miniiconsazure = { fg = '#a8a9eb' },
            miniiconscyan = { fg = '#85dacc' }, -- same value as miniiconsblue for consistency
          }
        end,
      }
      vim.cmd [[colorscheme monokai-pro]]
    end,
  },
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
  -- {
  --   'sphamba/smear-cursor.nvim',
  --
  --   opts = {
  --     enable = true,
  --     stiffness = 0.8,
  --     trailing_stiffness = 0.6,
  --
  --     -- Smear cursor when switching buffers or windows.
  --     smear_between_buffers = true,
  --
  --     -- Smear cursor when moving within line or to neighbor lines.
  --     -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
  --     smear_between_neighbor_lines = true,
  --
  --     -- Draw the smear in buffer space instead of screen space when scrolling
  --     scroll_buffer_space = false,
  --
  --     -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
  --     -- Smears will blend better on all backgrounds.
  --     legacy_computing_symbols_support = false,
  --
  --     -- Smear cursor in insert mode.
  --     -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
  --     smear_insert_mode = false,
  --   },
  -- },
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
      },
      diagnostics = {
        disabled = { 'needless_return' },
      },
    },
  },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
  -- stylua: ignore
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
  },
}
