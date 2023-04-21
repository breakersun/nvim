return {
  "dhananjaylatkar/cscope_maps.nvim",
  after = "which-key.nvim",
  config = function()
    require("cscope_maps").setup({
      disable_maps = true,
      vim.api.nvim_set_keymap(
        "n",
        "<C-c><C-g>",
        [[<cmd>lua require('cscope_maps').cscope_prompt('g', vim.fn.expand("<cword>"))<cr>]],
        { noremap = true, silent = true }
      ),
    })
  end,
}
