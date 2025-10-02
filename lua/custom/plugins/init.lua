-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'gthelding/monokai-pro.nvim',
    config = function()
      require('monokai-pro').setup {
        filter = 'ristretto',
        override = function()
          return {
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
  {
    'sphamba/smear-cursor.nvim',

    opts = {
      enable = true,
      stiffness = 0.8,
      trailing_stiffness = 0.6,

      -- Smear cursor when switching buffers or windows.
      smear_between_buffers = true,

      -- Smear cursor when moving within line or to neighbor lines.
      -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
      smear_between_neighbor_lines = true,

      -- Draw the smear in buffer space instead of screen space when scrolling
      scroll_buffer_space = false,

      -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
      -- Smears will blend better on all backgrounds.
      legacy_computing_symbols_support = false,

      -- Smear cursor in insert mode.
      -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
      smear_insert_mode = false,
    },
  },
}
