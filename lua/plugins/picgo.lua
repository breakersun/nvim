return {
  "askfiy/nvim-picgo",
  ft = { "markdown" },
  config = function ()
    require("nvim-picgo").setup()
  end
}
