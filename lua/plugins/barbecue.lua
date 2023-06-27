return {
  "utilyre/barbecue.nvim",
  event = "VeryLazy",
  keys = {
    { ",tb", "<cmd>Barbecue toggle<CR>", desc = "Toggle Barbecue", },
  },
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "kyazdani42/nvim-web-devicons", -- optional
  },
  config = function()
    require("barbecue").setup()
  end,
}
