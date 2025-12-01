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
  -- {
  --   'nordtheme/vim',
  --   config = function()
  --     vim.g.nord_italic = true
  --     vim.g.nord_italic_comments = true
  --     vim.cmd [[colorscheme nord]]
  --
  --     -- Nuke ALL backgrounds (so terminal bg always shows)
  --     vim.cmd [[
  --     hi Normal       guibg=NONE ctermbg=NONE
  --     hi NormalFloat  guibg=NONE ctermbg=NONE
  --     hi SignColumn   guibg=NONE ctermbg=NONE
  --     hi LineNr       guibg=NONE ctermbg=NONE
  --     hi EndOfBuffer  guibg=NONE ctermbg=NONE
  --     hi StatusLine   guibg=NONE ctermbg=NONE
  --     hi VertSplit    guibg=NONE ctermbg=NONE
  --   ]]
  --   end,
  -- },
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    lazy = false,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
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
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
      'TmuxNavigatorProcessList',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'windwp/nvim-ts-autotag',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('nvim-ts-autotag').setup {
        opts = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = false,
        },
        per_filetype = {
          ['html'] = {
            enable_close = false,
          },
        },
      }
    end,
  },
}
