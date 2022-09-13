local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Install your plugins here
return packer.startup({function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use 'lewis6991/impatient.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use 'gelguy/wilder.nvim'
  -- use 'vim-airline/vim-airline'
  use 'folke/tokyonight.nvim'
  use "EdenEast/nightfox.nvim"
  use 'liuchengxu/vim-which-key'
  use 'machakann/vim-highlightedyank'
  use 'goolord/alpha-nvim'
  use 'simrat39/symbols-outline.nvim'
  -- cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json format
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  -- Telescope
  use "nvim-telescope/telescope.nvim"
  -- Treesitter
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate",}
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "p00f/nvim-ts-rainbow"
  -- autopairs
  use "windwp/nvim-autopairs"
  -- comment
  use "numToStr/Comment.nvim"
  -- git
  use "lewis6991/gitsigns.nvim"
  -- bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use "moll/vim-bbye" -- Bdelete, close buffer but not quit nvim
  -- toggleterm
  use "akinsho/toggleterm.nvim"
  -- nvim-tree
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  -- lua-line
  use 'nvim-lualine/lualine.nvim'
  use 'SmiteshP/nvim-gps'
  -- whichkey
  use "folke/which-key.nvim"
  use 'machakann/vim-sandwich'
  use 'tpope/vim-sleuth'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
    end
  end,
  -- customized UI
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'rounded' })
      end
      }
    }
  }
)
