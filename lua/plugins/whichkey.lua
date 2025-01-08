return {
  "folke/which-key.nvim",
  opts = {
    spec = {
			{ "<leader>d", group = "[d]bugger", icon = '🐞' },
			{ "<leader>g", group = "[g]it", icon = '' },
			{ "<leader>l", group = "[l]sp", icon = '☕' },
			{ "<leader>s", group = "[s]earch", icon = '🔍' },
			{ "<leader>t", group = "[t]erminal", icon = '💻' },
			{ "<leader>y", group = "[y]ank", icon = '📋' },
			{ ",p", group = "[p]doc", icon = '📝' },
			{ ",t", group = "[t]oggle", icon = '🎚' },
		},
  },
  keys = {
    {
      "<leader>?",
      function() require("which-key").show({ global = false }) end,
      desc = "Buffer Local Keymaps",
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
    },
    {
      '<leader>go', '<cmd>Telescope git_status theme=ivy<cr>', desc = 'Git Status'
    },
    {
      '<leader>gb', '<cmd>Telescope git_branches theme=ivy<cr>', desc = 'Checkout Branch'
    },
    {
      '<leader>gc', '<cmd>Telescope git_commits theme=ivy<cr>', desc = 'Checkout Commits'
    },
    {
      '<leader>lc', '<cmd>NodeAction', desc = 'Node Action'
    },

    {
      '<leader>ld', '<cmd>Telescope diagnostics bufnr=0 theme=ivy<CR>', desc = 'Document Diagnostics'
    },
    {
      '<leader>lw', '<CMD>Telescope diagnostics theme=ivy<CR>', desc = 'Workspace Diagnostics'
    },
    {
      '<leader>lf',
      function()
        vim.lsp.buf.format { async = true }
      end,
      desc = 'Format'
    },
    {
      '<leader>lh', '<cmd>ClangdSwitchSourceHeader<CR>', desc = 'Toggle Source/Header File (Clangd)'
    },
    {
      '<leader>li', '<cmd>echom expand("%:p").":".line(".")<CR>', desc = 'Line Info'
    },
    {
      '<leader>lm', '<cmd>Mason<CR>', desc = 'Mason'
    },
    {
      '<leader>ll', vim.lsp.codelens.run, desc = 'CodeLens Action'
    },
    {
      '<leader>lq', vim.lsp.diagnostic.set_loclist, desc = 'Quickfix'
    },
    {
      '<leader>ls', '<CMD>Telescope lsp_document_symbols theme=ivy<CR>', desc = 'Document Symbols'
    },
    {
      '<leader>lS', '<CMD>Telescope lsp_dynamic_workspace_symbols theme=ivy<CR>', desc = 'Workspace Symbols'
    },
    {
      '<leader>lo', '<cmd>SymbolsOutline<CR>', desc = 'Symbols Outline'
    },
    {
      '<leader>sc', '<cmd>Telescope<cr>', desc = 'Commands'
    },
    {
      '<leader>ss',
      require("telescope-live-grep-args.shortcuts").grep_word_under_cursor,
      desc = 'Grep String'
    },
    {
      '<leader>sg', '<CMD>Telescope live_grep theme=ivy<CR>', desc = 'Live Grep'
    },
    {
      '<leader>sh', '<CMD>Telescope help_tags theme=ivy<CR>', desc = 'Find Help'
    },
    {
      '<leader>sm', '<CMD>Telescope man_pages theme=ivy<CR>', desc = 'Man Pages'
    },
    {
      '<leader>sR', '<CMD>Telescope registers<CR>', desc = 'Registers'
    },
    {
      '<leader>sk', '<CMD>Telescope keymaps<CR>', desc = 'Keymaps'
    },
    {
      '<leader>yy', '<cmd>Telescope neoclip<CR>', desc = 'Yank History'
    },
    {
      '<leader>yf',
      ':call setreg("+", expand("%:.") .. ":" .. line("."))<CR>',
      desc = 'Copy Path & Line Number'
    },
    {
      '<leader>yg',
      ':e <C-r>+<CR>', desc = 'Go to location in clipboard'
    },
    {
      '<leader>ym',
      '<CMD> let @+=v:statusmsg<CR>', desc = 'Copy Status Message'
    },
    {
      '<leader>yM',
      '<CMD> let @+=v:errmsg<CR>', desc = 'Copy Error Message'
    },
    {
      mode = 'v',
      '<leader>/',
      function ()
        require("Comment.api").toggle_linewise_op(vim.fn.visualmode())
      end,
      desc = 'Comment'
    },
    {
      ',s', "<cmd>lua require('substitute').operator()<cr>", desc = 'Substitute'
    },
    {
      ',pb',
      function ()
        vim.g.papyrus_pandoc_args  = '-t beamer --slide-level=2'
      end,
      desc = "Beamer Enable"
    },
    {
      ',pc', "<cmd>PapyrusStart<cr>", desc = "Compile"
    },
    {
      ',tl',
      function()
        local win = vim.api.nvim_get_current_win()
        local qf_wind = vim.fn.getloclist(win, {winid = 0}).winid
        local action = qf_wind > 0 and 'lclose' or 'lopen'
        vim.cmd(action)
      end,
      desc = 'Toggle Location List'
    },
    {
      ',tq',
      function ()
        local qf_wind = vim.fn.getqflist( {winid = 0}).winid
        local action = qf_wind > 0 and 'cclose' or 'copen'
        vim.cmd(action)
      end,
      desc = "Toggle Quickfix"
    }
  }
}
