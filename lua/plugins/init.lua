return {
  "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
  "lukas-reineke/indent-blankline.nvim",
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
  "nvim-telescope/telescope.nvim",
  -- Treesitter
  { "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies =
      {'nvim-treesitter/nvim-treesitter-textobjects'}
  },
  "JoosepAlviste/nvim-ts-context-commentstring",
  "p00f/nvim-ts-rainbow",
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
  'tpope/vim-sleuth',
  { 'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async' },
  { 'danymat/neogen', dependencies = "nvim-treesitter/nvim-treesitter", },
  { 'phaazon/hop.nvim', branch = 'v2', },
  { "iamcco/markdown-preview.nvim", build = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, },
  'ferrine/md-img-paste.vim',
  'sotte/presenting.vim',
  'tpope/vim-dispatch',
  { 'nvim-telescope/telescope-ui-select.nvim' },
  { 'nvim-telescope/telescope-project.nvim' },
  { 'RRethy/vim-illuminate' },
  'ivechan/gtags.vim',
  'junegunn/vim-easy-align',
  'tpope/vim-unimpaired',
  'tpope/vim-fugitive',
  'nvim-treesitter/nvim-treesitter-textobjects',
  'p00f/clangd_extensions.nvim',
  { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap"} },
  'mfussenegger/nvim-dap-python',
  'simrat39/symbols-outline.nvim',
}
