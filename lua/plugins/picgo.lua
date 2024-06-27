return {
  "askfiy/nvim-picgo",
  ft = { "markdown" },
  enabled = function() return jit.os == "Windows" end,
  config = function ()
    require("nvim-picgo").setup()
  end
}
