return {
  "folke/which-key.nvim",
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
    },
    {
      '<leader>d', group = 'Debugger'
    },
    {
      '<leader>db',
      function()
        require('dap').toggle_breakpoint()
      end,
      desc = 'Toggle Breakpoint'
    },
    {
      '<leader>dB',
      function ()
        require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))
      end,
      desc = 'Conditioanl Breakpoint'
    },
    {
      '<leader>dp',
      function()
        require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
      end,
      desc = 'Print Ponint'
    },
    {
      '<leader>dr',
      function()
        require('dap').repl.open()
      end,
      desc = 'Open REPL'
    },
    {
      '<leader>dt',
      function()
        require('dap').terminate()
      end,
      desc = 'Terminate Debugger'
    },
    {
      '<leader>g', group = 'Git'
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
      '<leader>l', group = 'LSP'
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
      '<leader>s', group = 'Search'
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
      '<leader>t', group = 'Terminal'
    --[[ { ]]
    --[[   n = { _NODE_TOGGLE, "Node" }, ]]
    --[[   u = { _NCDU_TOGGLE, "NCDU" }, ]]
    --[[   t = { _HTOP_TOGGLE, "Htop" }, ]]
    --[[   p = { _PYTHON_TOGGLE, "Python" }, ]]
    --[[   f = { "<cmd>ToggleTerm direction=float<cr>", "Float" }, ]]
    --[[   h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" }, ]]
    --[[   v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" }, ]]
    --[[ } ]]
    },
    {
      '<leader>y', group = 'Yank'
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
  }
}
