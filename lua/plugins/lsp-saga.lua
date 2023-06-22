return {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup({ ui = {border = "rounded"}, symbol_in_winbar = { enable = false,} })
      local keymap = vim.keymap.set
      keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
      keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")
      keymap("n", "gl", "<cmd>Lspsaga show_line_diagnostics<CR>")
      keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
      keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>")
    end,
    dependencies = {
      {"kyazdani42/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    }
}
