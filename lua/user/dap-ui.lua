local _status_ok, dapui = pcall(require, "dapui")
if not _status_ok then
  return
end
dap = require('dap')

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

vim.keymap.set('n', '<F5>', ":lua require'dap'.continue()<CR>")
vim.keymap.set('n', '<F10>', ":lua require'dap'.step_over()<CR>")
vim.keymap.set('n', '<F11>', ":lua require'dap'.step_into()<CR>")
vim.keymap.set('n', '<F12>', ":lua require'dap'.step_out()<CR>")
