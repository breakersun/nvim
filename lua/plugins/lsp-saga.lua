return {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    keys = {
      { "gh", "<cmd>Lspsaga lsp_finder<CR>", desc = "LSP Finder (Saga)", },
      { "K", "<cmd>Lspsaga hover_doc<CR>", desc = "LSP HoverDoc (Saga)", },
      { "gl", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = "LSP LineDiagnostics (Saga)", },
      { "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "LSP PrevDiagnostic (Saga)", },
      { "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "LSP NextDiagnostic (Saga)", },
      { "<leader>lr", "<cmd>Lspsaga rename<CR>", desc = "LSP Rename (Saga)", },
      { "<leader>lR", "<cmd>Lspsaga rename ++project<CR>", desc = "LSP RenameInProject (Saga)", },
      { "<leader>la", "<cmd>Lspsaga code_action<CR>", desc = "LSP CodeAction (Saga)", },
    },
    config = function()
      require("lspsaga").setup({ ui = {border = "rounded"}, symbol_in_winbar = { enable = false,} })
    end,
    dependencies = {
      {"kyazdani42/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    }
}
