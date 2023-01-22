return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  'machakann/vim-highlightedyank',
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
  { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },
  -- Treesitter
  { "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies =
    { 'nvim-treesitter/nvim-treesitter-textobjects' },
    event = "BufReadPost",
  },
  { "JoosepAlviste/nvim-ts-context-commentstring", event = "BufReadPost", },
  { "p00f/nvim-ts-rainbow", event = "BufReadPost", },
  "moll/vim-bbye", -- Bdelete, close buffer but not quit nvim
  -- toggleterm
  "akinsho/toggleterm.nvim",
  -- nvim-tree
  { 'kyazdani42/nvim-tree.lua', dependencies = 'kyazdani42/nvim-web-devicons', tag = 'nightly' },
  { 'tpope/vim-sleuth', event = "BufReadPost" },
  { "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
  { 'ferrine/md-img-paste.vim', ft = { "markdown" } },
  'tpope/vim-dispatch',
  { 'nvim-telescope/telescope-ui-select.nvim' },
  { 'nvim-telescope/telescope-project.nvim' },
  { 'ivechan/gtags.vim', event = "BufReadPost" },
  { 'junegunn/vim-easy-align', event = "BufReadPost", },
  { 'tpope/vim-unimpaired', event = "BufReadPost", },
  'tpope/vim-fugitive',
  { 'p00f/clangd_extensions.nvim', event = "BufReadPost", },
}
