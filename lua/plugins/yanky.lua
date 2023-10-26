return {
  "gbprod/yanky.nvim",
  enabled = false,
  config = function ()
    require("yanky").setup({
      highlight = {
        on_put = false,
        on_yank = true,
        timer = 500,
      },
    })
  end,
  keys = {
    {
      "y",
      mode = { "n", "x" },
      "<Plug>(YankyYank)",
    },
    {
      "p",
      mode = { "n", "x" },
      "<Plug>(YankyPutAfter)",
    },

    {
      "P",
      mode = { "n", "x" },
      "<Plug>(YankyPutBefore)",
    },

    {
      "gp",
      mode = { "n", "x" },
      "<Plug>(YankyGPutAfter)",
    },

    {
      "gP",
      mode = { "n", "x" },
      "<Plug>(YankyGPutBefore)",
    },

    {
      "<c-n>",
      mode = { "n" },
      "<Plug>(YankyCycleForward)",
    },

    {
      "<c-p>",
      mode = { "n" },
      "<Plug>(YankyCycleBackward)",
    }
  }
}
