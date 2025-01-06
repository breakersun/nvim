return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = { },
  keys = {
    {
      "<leader>?",
      function() require("which-key").show({ global = false }) end,
      desc = "Buffer Local Keymaps (which-key)",
    },
    {
      "<leader>/",
      function() require('Comment.api').toggle.linewise() end,
      desc = "Comment",
    },
    {
      "<leader>b",
      function()
        require('telescope.builtin').buffers(require('telescope.themes').get_dropdown { previewer = false })
      end,
      desc = "Buffers",
    },
    {
      "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer"
    },
    {
      "<leader>w", "<cmd>w!<CR>", desc = "Save"
    },
    {
      "<leader>q", "<cmd>q!<CR>", desc = "Quit"
    },
    {
      "<leader>Q", "<cmd>qall<CR>", desc = "Quit All"
    },
    {
      "<leader>c", "<cmd>Bdelete!<CR>", desc = "Close Buffer"
    },
    {
      '<leader>p', '<cmd>Telescope neoclip extra=star,plus<CR>', desc= 'Clipboard Viewer'
    },
    {
      "<leader>P", "<cmd>Telescope project<cr>", "Projects"
    },
    {
      "<leader>f",
        function()
          require('telescope.builtin').find_files( require('telescope.themes').get_dropdown { previewer = false })
        end,

        desc = "Find files",
    }
  }
}
