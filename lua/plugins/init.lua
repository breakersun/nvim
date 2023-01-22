return {
  'folke/tokyonight.nvim',
  'machakann/vim-highlightedyank',
  -- cmp
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lua',
  'L3MON4D3/LuaSnip',
  'rafamadriz/friendly-snippets',
  -- LSP
  'neovim/nvim-lspconfig',
  {
    'breakersun/lsp-setup.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    }
  },
  -- Telescope
  {"nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim"},
  -- Treesitter
  { "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies =
      {'nvim-treesitter/nvim-treesitter-textobjects'},
    event = "BufReadPost",
  },
  {"JoosepAlviste/nvim-ts-context-commentstring", event = "BufReadPost",},
  {"p00f/nvim-ts-rainbow", event = "BufReadPost",},
  -- autopairs
  "windwp/nvim-autopairs",
  -- git
  "lewis6991/gitsigns.nvim",
  "moll/vim-bbye", -- Bdelete, close buffer but not quit nvim
  -- toggleterm
  "akinsho/toggleterm.nvim",
  -- nvim-tree
  { 'kyazdani42/nvim-tree.lua', dependencies = 'kyazdani42/nvim-web-devicons', tag = 'nightly' },
  -- lua-line
  'nvim-lualine/lualine.nvim',
  -- whichkey
  "folke/which-key.nvim",
  {'tpope/vim-sleuth', event = "BufReadPost"},
  { "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
  {'ferrine/md-img-paste.vim', ft = {"markdown"}},
  'tpope/vim-dispatch',
  { 'nvim-telescope/telescope-ui-select.nvim' },
  { 'nvim-telescope/telescope-project.nvim' },
  {'ivechan/gtags.vim', event = "BufReadPost"},
  {'junegunn/vim-easy-align', event = "BufReadPost",},
  {'tpope/vim-unimpaired', event = "BufReadPost",},
  'tpope/vim-fugitive',
  {'p00f/clangd_extensions.nvim', event = "BufReadPost",},
}
