return {
  "utilyre/barbecue.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "kyazdani42/nvim-web-devicons", -- optional
  },
  config = function()
    require("barbecue").setup()
  end,
}
