return {
  "utilyre/barbecue.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "smiteshp/nvim-navic",
    "kyazdani42/nvim-web-devicons", -- optional
  },
  config = function()
    require("barbecue").setup()
  end,
}
