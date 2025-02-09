return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
  --[[ 'machakann/vim-highlightedyank', ]]
  { "JoosepAlviste/nvim-ts-context-commentstring", event = "BufReadPost", },
  { 'HiPhish/rainbow-delimiters.nvim', event = { 'BufReadPost', 'BufNewFile' } },
  "moll/vim-bbye", -- Bdelete, close buffer but not quit nvim
  -- toggleterm
  "akinsho/toggleterm.nvim",
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown", "puml" }
    end,
    ft = { "markdown" },
  },
  { 'ferrine/md-img-paste.vim', ft = { "markdown" } },
  'tpope/vim-dispatch',
  { 'nvim-telescope/telescope-ui-select.nvim' },
  { 'nvim-telescope/telescope-project.nvim' },
  --[[ { 'ivechan/gtags.vim', event = "BufReadPost" }, ]]
  { 'junegunn/vim-easy-align', event = "BufReadPost", },
  { 'tpope/vim-unimpaired', event = { "BufReadPre", "BufNewFile" }, },
  { 'tpope/vim-sleuth', event = "BufReadPost" },
  'tpope/vim-fugitive',
  { 'sotte/presenting.vim' , cmd = 'PresentingStart'},
  { 'AndrewRadev/switch.vim', keys = { 'gs', mode = "n" }, },
  { 'Neur1n/neuims',
    cmd = 'IMSToggle',
    cond = function ()
      if vim.fn.has("win32") == 1 then return true end
      return false
    end,
  },
  { 'tpope/vim-repeat' },
  { "Gelio/cmp-natdat", config = true },
}
