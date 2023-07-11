return {
  'nvim-pack/nvim-spectre',
  keys = {
    { "<leader>sr",
      '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
      desc = "Rename CurrentWord(Spectre)",
    },
  },
}
