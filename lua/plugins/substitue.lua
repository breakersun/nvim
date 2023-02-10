return {
  "gbprod/substitute.nvim",
  event = "BufReadPost",
  config = function()
    require("substitute").setup({ })
  end
}
