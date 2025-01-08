return {
  "rcarriga/nvim-dap-ui",
  dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
  config = function()
    local _status_ok, dapui = pcall(require, "dapui")
    if not _status_ok then
      return
    end
    dap = require('dap')
    wk = require('which-key')

    dapui.setup()

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  end,
  keys = {
    {'<F5>', ":lua require'dap'.continue()<CR>"},
    {'<F10>', ":lua require'dap'.step_over()<CR>"},
    {'<F11>', ":lua require'dap'.step_into()<CR>"},
    {'<F12>', ":lua require'dap'.step_out()<CR>"},
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
    }
  }
}
